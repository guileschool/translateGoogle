#!/bin/bash
#
# This script is to correct the papago identification information
#
read -p "Enter the Google Translate Key -> " TMP_KEY 

KEY=$(tr -d ' ' <<< "${TMP_KEY}")

### SAVE GOOGLE TRANSLATE API KEY to mac's keychain
KEYNAME=google_translate_key # DO NOT MODIFY THIS LINE

if [ -n "$KEY" ]; then
    KEYNAME=google_translate_key
    security add-generic-password -a ${USER} -s ${KEYNAME} -w ${KEY}
    echo -e "\n>>>your identity is updated"
else
    echo -e "\n>>>The information entered is not valid"
    osascript -e 'display alert "The information entered is not valid" buttons {"OK"} default button "OK" giving up after 5' >/dev/null
fi