Disk Image
----------

Our custom disk image is based on the Picroft release, with a few
typo corrections, and a few convenience additions to make it easier
for installation in our facility.  For example, we have built in 
network credentials for our network.

[Our image](https://drive.google.com/file/d/140IF5KPUmsA1clHPB9EVX0JsFPlQrXdT/view?usp=sharing)

Instructions for installing this image on the SD Card are available
on the [Picroft site](https://mycroft.ai/documentation/picroft/#burn-the-disk-image-to-the-micro-sd-card).

Here are the steps we used with our hardware and software configuration:

- *Boot system*: Turn it on, with an HDMI monitor and USB keyboard temporarily connected.
- *Guided Setup*: `Y`es.
- *Audio Output*: `3` for USB speaker.  `7` for volume.  `D`one.  You may not hear anything.  This is OK.  We'll fix it later.
- *Microphone*: `1` for PlayStation Eye. Did hear anything, because the speaker isn't configured correctly yet.  `3` to continue anyway.
- *Mycroft release*: `1` for `master` branch, the more stable choice.
- *Security Admin*: `1` to stick with Raspbian default of no password to administer system. Easier to use, less secure.
- *Password*: `Y`es change the password to something else, that you can remember.
- *Launch Mycroft*: Any key. Be patient, several one-time-only setup operations will proceed from here. 
  This took almost 5 minutes on my system.  Be patient. Several apparent errors occur. It's OK.  Let it ride.
- *Continue*: When the messages stop, hit `Enter` and look for the `$` prompt.  When it's there, you are ready to continue.  Go to the
  [audio setup](../audio/) instructions.
  



