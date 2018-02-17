#!/bin/bash
# GOOGLE TRANSLATE(EN to LOCALE)

### Supported Language
#한국어 ko
#영어 en
#일본어 ja
#중국어(간체) zh-CN
#중국어(번체) zh-TW
#스페인어 es
#프랑스어 fr
#베트남어 vi
#태국어 th
#인도네시아어 id

LANG1="ko" #<--- default your language(locale)
LANG2="en" #<--- default 2nd language

KMVAR_CLIP=$(echo -n "$POPCLIP_TEXT")
export KMVAR_CLIP
TEXT=$(perl -CS nfd2nfc.pl)

export QF='\`'
GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\"" # replace(Korea->한국)
#GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\" | pbcopy" # to clipboard
#GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\" | pbcopy; echo -n \"${TEXT}\"\(\`pbpaste\`\)" # Korea(한국)
#GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\" | tr \  -" # 대한민국은-아름다운-사계절을-가졌다
#GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\" | tr \  _" # 대한민국은_아름다운_사계절을_가졌다
#GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\" | pbcopy; echo -n **\"${TEXT}\"\(\`pbpaste\`\)**" # **Korea(한국)**
#GOOGLE_NAME="translate ${LANG2} ${LANG1} \"${TEXT}\" | pbcopy; echo -n ${QF}\"${TEXT}\"\(\`pbpaste\`\)${QF}" # `Korea(한국)`

eval ${GOOGLE_NAME}
