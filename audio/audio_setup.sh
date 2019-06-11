#!/bin/bash

#
# This script assumes that there is one audio card/device with 'USB2.0 Device' in its name.
# That card/device is selected and configured as the default card/device for Mycroft.
#

card=$( aplay --list-devices | egrep 'USB2\.0 Device' | awk '{ printf( "%s\n", $2 ); }' | sed 's/://g' )
device=$( aplay --list-devices | egrep 'USB2\.0 Device' | awk '{ printf( "%s\n", $7 ); }' | sed 's/://g' )
sudo sed -i -r 's/"play_wav_cmdline.*/"play_wav_cmdline": "aplay -Dplughw:'${card}','${device}' %1",/' /etc/mycroft/mycroft.conf
sudo sed -i -r 's/"play_mp3_cmdline.*/"play_mp3_cmdline": "mpg123 -a hw:'${card}','${device}' %1",/' /etc/mycroft/mycroft.conf
amixer --card $card set PCM 79%
