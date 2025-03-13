#!/bin/bash

enable()
{
	echo "keycode 59 = colon U037E" > ~/.tmp_Xmodmap
	xmodmap ~/.tmp_Xmodmap
	rm -f ~/.tmp_Xmodmap
}

disable()
{
	echo "keycode 59 = colon semicolon" > ~/.tmp_Xmodmap
	xmodmap ~/.tmp_Xmodmap
	rm -f ~/.tmp_Xmodmap
}

if [ "$1" == "enable" ]; then
    enable
elif [ "$1" == "disable" ]; then
    disable
else
    echo "Usage: $0 {enable|disable}"
    exit 1
fi
