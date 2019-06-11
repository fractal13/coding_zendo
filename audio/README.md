Configuring Audio Output
------------------------

The default audio output configuration on our Picroft
is not 100% reliable.  It can easily get confused when
you plug in HDMI monitors with sound capabilities (such as
a TV).  Also, the order of the device detection at boot up
appears to be somewhat random.  

This replacement for `audio_setup.sh` assumes that you
are using the `USB2.0 Device`, and it is the only audio
output that uses that name.  It re-configures the audio
output at boot by detecting the device number and 
re-writing the configuration file.

Download [audio_setup.sh](https://raw.githubusercontent.com/fractal13/coding_zendo/master/audio/audio_setup.sh) if you want, but
not necessary to download to your desktop system.

Installation
------------

- *Log in*: to the Picroft device, and get the command prompt `$`. 
- *Download*: and install the script: `curl --output ~/audio_setup.sh https://raw.githubusercontent.com/fractal13/coding_zendo/master/audio/audio_setup.sh`
- *Reboot*:  `sudo reboot`

Now the device should be configured correctly.


