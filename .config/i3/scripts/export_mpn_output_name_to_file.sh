#!/bin/bash

SCREENS=( $(xrandr -q | grep " connected" | cut -d ' ' -f 1 | tr '\n' ' ' | rev | cut -c 1- | rev) )
NAMES=('MON_DVI' 'MON_HDMI' 'MON_DP')
NB_SCREENS=3
FILE=/home/krapaince/.config/zsh/.monitorenv

rm -rf $FILE

for ((i = 0 ; i < $NB_SCREENS ; i++)); do
    echo "export ${NAMES[$i]}=${SCREENS[$i]}" >> $FILE
done
