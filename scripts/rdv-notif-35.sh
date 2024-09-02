#!/bin/bash

get_available_slot() {

    local slotByDay=$(curl 'https://esii-orion.com/orion/api/1/rdv/bookings/availableSlotByDay' \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -H 'Origin: https://esii-orion.com' \
    -H 'Referer: https://esii-orion.com/orion-reservation/slots?account=EVMSPI&config=SEJOURUSARNVT&usemode=app&code=REN1' \
    -s \
    --data-raw $'{"date":null,"maxElement":"100","maxElementBySite":"1000000","numberOfDay":6,"accountId":"EVMSPI","usagerUid":null,"purposes":[{"accountId":"EVMSPI","readOnly":false,"imagePath":"","orientationMessageId":"","qrCodeConfig":"DIRECT_CALL","placeVisibility":{"notionId":"62ab40118ada4314bc88e25b","type":"com.esii.orion.business.model.Place","placeLabel":null,"groupPlaceLabel":null},"readOnlyGroup":false,"antsFlag":"NONE","showAntsFlag":false,"noTicket":false,"antsFlagChoice":[],"id":"62ff72f5dce1255e27820037","businessId":"SEJ04","groupPurposeCode":"SEJ","groupPurposeId":"62ff722ddce1255e27820026","groupPurposeColor":"#579d1c","name":"Demande renouvellement de titre de séjour","nameForUser":[{"locale":"fr","content":"Demande renouvellement de titre de séjour"}],"groupNameForUser":[{"locale":"fr","content":"Séjour"}],"duration":"00:20:00","information":[{"locale":"fr","content":"<p> Afin de constituer votre dossier, merci de consulter la liste des pièces nécessaires à votre demande :\\n<a href=\\"https://www.ille-et-vilaine.gouv.fr/Demarches/Demarches-Sejour/Prendre-un-rendez-vous/Listes-de-pieces-a-telecharger\\"> En cliquant ICI</a>\\n\\n<a style=\\"color:#FF8C00;font-weight:900; font-size:16px;\\"> Attention <a style=\\"color:#000000;font-weight:900; font-size:16px;\\">  justificatif de nationalité obligatoire (passeport ou carte d\'identité)</a>\\n\\n<a style=\\"color:#000000;font-weight:900; font-size:18px;\\">Attention  le jour du rendez-vous: </a>\\n\\n*Merci de vous munir  <a style=\\"color:#000000; text-decoration:underline\\n;font-weight:900; font-size:14px;\\">des originaux et des copies</a> des documents nécessaires à la constitution de vos dossiers \\n\\n*Présence du conjoint obligatoire dans le cadre des renouvellements de titres suivants : \\n- conjoint de français ou PACS;\\n- conjoint entré par regroupement familial;\\n- conjoint de réfugié;\\nUne déclaration de communauté de vie sera à signer au guichet.\\n\\n*Présence de l’enfant obligatoire dans le cadre d’une demande d’APS (accompagnant enfant malade).  \\n\\n<a style=\\"color:#FF8C00;font-weight:900; font-size:18px;\\"> Pour rappel <a style=\\"color:#000000;font-weight:900; font-size:18px;\\">: le jour de votre rendez-vous tout dossier incomplet sera considéré comme irrecevable.</a>\\n\\nLe cas échéant, la présente convocation autorise à travailler et assure le maintien des droits sociaux (voir dernier document de séjour).\\n  </p>"}],"description":[],"required":false,"quantity":1,"additionalDuration":20,"sorterField":"","groupSorterField":"","maxQuantity":1,"groupName":"Bureau Séjour","visibilityReasonConfiguration":"6321bfa7f3e9db3bed5fed0d","color":"#579d1c","prefix":"SEJ","processed":false,"manual":false,"visibility":{"appointment":true,"rdvVisibility":"6321bfa7f3e9db3bed5fed0d","configValue":"6321bfa7f3e9db3bed5fed0d","rdvVisibilityChoiceList":[],"kiosk":false,"smartphone":false,"configColor":null,"configName":null,"config":true},"quantityDisplay":"","displayName":"Demande renouvellement de titre de séjour","htmlDescription":"","translatedLabel":"Demande renouvellement de titre de séjour","fullInformations":{"changingThisBreaksApplicationSecurity":"<p> Afin de constituer votre dossier, merci de consulter la liste des pièces nécessaires à votre demande :\\n<a href=\\"https://www.ille-et-vilaine.gouv.fr/Demarches/Demarches-Sejour/Prendre-un-rendez-vous/Listes-de-pieces-a-telecharger\\"> En cliquant ICI</a>\\n\\n<a style=\\"color:#FF8C00;font-weight:900; font-size:16px;\\"> Attention <a style=\\"color:#000000;font-weight:900; font-size:16px;\\">  justificatif de nationalité obligatoire (passeport ou carte d\'identité)</a>\\n\\n<a style=\\"color:#000000;font-weight:900; font-size:18px;\\">Attention  le jour du rendez-vous: </a>\\n\\n*Merci de vous munir  <a style=\\"color:#000000; text-decoration:underline\\n;font-weight:900; font-size:14px;\\">des originaux et des copies</a> des documents nécessaires à la constitution de vos dossiers \\n\\n*Présence du conjoint obligatoire dans le cadre des renouvellements de titres suivants : \\n- conjoint de français ou PACS;\\n- conjoint entré par regroupement familial;\\n- conjoint de réfugié;\\nUne déclaration de communauté de vie sera à signer au guichet.\\n\\n*Présence de l’enfant obligatoire dans le cadre d’une demande d’APS (accompagnant enfant malade).  \\n\\n<a style=\\"color:#FF8C00;font-weight:900; font-size:18px;\\"> Pour rappel <a style=\\"color:#000000;font-weight:900; font-size:18px;\\">: le jour de votre rendez-vous tout dossier incomplet sera considéré comme irrecevable.</a>\\n\\nLe cas échéant, la présente convocation autorise à travailler et assure le maintien des droits sociaux (voir dernier document de séjour).\\n  </p>"},"shortInformations":{"changingThisBreaksApplicationSecurity":"<p> Afin de constituer votre dossier, merci de consulter la liste des pièces nécessaires à votre demande :\\n<a href=\\"https://www.ille-et-vilaine.gouv.fr/Demarche..."},"open":false}],"configId":"6321bfa7f3e9db3bed5fed0d","duration":20,"filterRequest":{"filterChannel":["PHYSICAL"],"filterDay":[2,3,4,5,1],"filterPlaceCode":["REN1"],"filterPlaceUrlCode":["REN1"],"filterPlaceCodeCanChange":false,"filterResources":[]},"ignoreResource":true,"external":false,"indexPagination":1,"slotsPerPage":100}' | jq)

    echo "$slotByDay" >&2

    echo "$slotByDay"
}

prepare_notify() {

local number_of_daySlots=$1

local email_content=$(cat <<EOF
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notification</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 20px;">
    <div style="max-width: 600px; margin: auto; background-color: #ffffff; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
        <h2 style="color: #333333;">Bonjour,</h2>
        <p style="color: #555555; font-size: 16px;">
            Nous vous informons que de nouvelles places et créneaux horaires sont disponibles.
        </p>
        <p style="color: #555555; font-size: 16px;">
            <strong>Créneaux horaires disponibles :</strong> $number_of_daySlots
        </p>
        <p style="color: #555555; font-size: 16px;">
            Cliquez sur le bouton ci-dessous pour réserver dès maintenant :
        </p>
        <p style="text-align: center;">
            <a href="https://esii-orion.com/orion-reservation/slots?account=EVMSPI&config=SEJOURUSARNVT&usemode=app&code=REN1" style="background-color: #007bff; color: #ffffff; padding: 10px 20px; text-decoration: none; border-radius: 5px;">Réserver maintenant</a>
        </p>
        <p style="color: #555555; font-size: 16px;">
            Merci.
        </p>
    </div>
</body>
</html>
EOF
)

echo "$email_content"
}

check_available_slot_and_prepare_notify() {
    local slotByDayResponse=$1
    local email_content

    daySlots=$(echo "$slotByDayResponse" | jq '.daySlots | length')

    if [ "$daySlots" -gt 0 ]; then
        email_content=$(prepare_notify "$daySlots")
        echo "$email_content"
    else
        echo "No available appointment !!!"
        exit 1
    fi
}

main() {
    
    local slotByDayResponse=$(get_available_slot)

    check_available_slot_and_prepare_notify "$slotByDayResponse"
}

main