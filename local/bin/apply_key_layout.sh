#!/bin/env sh

# Preonic to altgr-intl
setxkbmap -device `xinput list --id-only 'Drop Preonic'` us -variant altgr-intl


