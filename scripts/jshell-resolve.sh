#!/bin/bash

DEPS_FILE=""
DEPENDENCIES=""
CMD=""
JSH_FILE=""

usage() {
    echo "Usage: jshell-resolve --deps-file <file.deps> [--jsh-file <file.jsh>]" >&2;
    echo "Example: jshell-resolve --deps-file dependencies.deps [--jsh-file import.jsh]" >&2;
    exit 1;
}

check_parameters() {

    [ -z "$DEPS_FILE" ] && {
        usage
    }

    [ ! -f "$DEPS_FILE" ] && {
        echo "Error: The file '$DEPS_FILE' does not exist" >&2
        exit 1
    }

    if [ -n "$JSH_FILE" ]; then
        [ ! -f "$JSH_FILE" ] && {
            echo "Error: The file '$JSH_FILE' does not exist" >&2
            exit 1
        }

        [[ "$JSH_FILE" != *.jsh ]] && {
            echo "Error: The file '$JSH_FILE' does not have a .jsh extension" >&2
            usage
        }
    fi
}

make_gradle_spec_dependencies() {
    local dependencies_list

    dependencies_list=$(awk '{print $1}' "$DEPS_FILE" | tr '\n' ' ')

    DEPENDENCIES=$(for dep in $dependencies_list; do
	    echo "implementation '$dep'"
    done)
}

make_jshell_command() {

    local jsh_content=""

    [ -n "$JSH_FILE" ] && {
        jsh_content=$(cat "$JSH_FILE")
    }

CMD=$(cat <<-END_OF_CMD
set -euo pipefail
cat > "build.gradle" <<- END_OF_BUILD
plugins {
  id 'java'
}
repositories {
  jcenter()
  mavenCentral()
}
dependencies {
  $DEPENDENCIES
}
task printClasspath {
  doLast {
    new File(projectDir, "classpath").text = 'export CLASSPATH="' + sourceSets.main.runtimeClasspath.asPath + '"'
  }
}
END_OF_BUILD
cat > "input.jsh" <<- END_OF_JSHELL
$jsh_content
END_OF_JSHELL
gradle --version > /dev/null 2>&1
gradle printClasspath
source classpath
jshell JAVASE PRINTING input.jsh --enable-preview
END_OF_CMD
)
}

main() {

    while [ $# -gt 0 ]; do
        case "$1" in
            --deps-file)
            shift
            DEPS_FILE="$1"
            ;;
            --jsh-file)
            shift
            JSH_FILE="$1"
            ;;
            *)
            echo "Invalid argument: $1" >&2
            usage
            ;;
        esac
        shift
    done 

    check_parameters

    make_gradle_spec_dependencies

    make_jshell_command

    docker run --net host -it --rm -u gradle gradle:jdk22-jammy /bin/bash -c "$CMD"

}

main "$@"

