#!/bin/bash

status=$(gsettings get org.gnome.desktop.peripherals.touchpad send-events)

if [ $status = "'disabled'" ]; then
	gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
else
	gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
fi
