#!/bin/bash
# GOOGLE TRANSLATE(LOCALE to EN)

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
GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\"" # replace(한국->Korea)
#GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\" | pbcopy" # to clipboard
#GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\" | pbcopy; echo -n \"${TEXT}\"\(\`pbpaste\`\)" # 한국(Korea)
#GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\" | tr \  -" # Korea-has-beautiful-four-seasons
#GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\" | tr \  _" # Korea_has_beautiful_four_seasons
#GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\" | pbcopy; echo -n **\"${TEXT}\"\(\`pbpaste\`\)**" # **한국(Korea)**
#GOOGLE_NAME="translate ${LANG1} ${LANG2} \"${TEXT}\" | pbcopy; echo -n ${QF}\"${TEXT}\"\(\`pbpaste\`\)${QF}" # `한국(Korea)`

eval ${GOOGLE_NAME}
