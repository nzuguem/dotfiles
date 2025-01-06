//JAVA 21+
//PREVIEW
//DEPS dev.langchain4j:langchain4j:1.0.0-alpha1
//DEPS dev.langchain4j:langchain4j-open-ai:1.0.0-alpha1
//DEPS org.tinylog:tinylog-impl:2.6.2
//DEPS org.tinylog:slf4j-tinylog:2.6.2

import dev.langchain4j.model.openai.OpenAiChatModel;
import dev.langchain4j.model.openai.OpenAiChatModelName;

void main() {
    openai();
}

void openai() {
    var openAiKey = System.getenv("OPENAI_API_KEY");

    var chatModel = OpenAiChatModel.builder()
            .apiKey(openAiKey)
            .modelName(OpenAiChatModelName.GPT_4_O_MINI)
            .build();

    var joke = chatModel.chat("Tell me a joke about Java");

    System.out.println(joke);
}