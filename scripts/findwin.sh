#!/bin/bash
#me wants to be an awesom shortcut...
WIN=$( wmctrl -l | \
	dmenu -i -l 32 -fn -*-fixed-*-*-normal--15-*-*-*-*-*-*-1 \
	-nb black -nf green -sb red -sf green | \
	awk -F' ' '{ print $1 }')
if [ $WIN ]
then
	echo $WIN &&   wmctrl -i -a $WIN
fi





