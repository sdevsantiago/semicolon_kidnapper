#!/bin/bash

enable()
{
	echo "keycode 59 = comma U037E" > ~/.tmp_Xmodmap
	xmodmap ~/.tmp_Xmodmap
	rm -f ~/.tmp_Xmodmap
}

disable()
{
	echo "keycode 59 = comma semicolon" > ~/.tmp_Xmodmap
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
