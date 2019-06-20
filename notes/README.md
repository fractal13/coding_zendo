Various Notes
-------------

Take with a grain of salt.


Installation of Mycroft on Raspberry Pi
---------------------------------------

These instructions were used on *16 May 2019*. This system is evolving rather quickly, so be careful
to check for changes.

The starting place for this work is [the mycroft.ai documenation](https://mycroft.ai/documentation/picroft/).

Creating the Initial Disk Image
-------------------------------

Download the [Picroft disk image](https://mycroft.ai/to/picroft-image).
From here, we need to write it to the microSD card. On a Linux system,
I accomplished this by the following command.  You'll want to be
sure that you identify the device name correctly.

    unzip -p raspbian-stretch_Picroft_2018-09-12.zip | sudo dd of=/dev/mmcblk0 bs=4M conv=fsync

We'll want to make some changes to the files before booting from it.

- Mount the `rootfs` and edit `home/pi/auto_run.sh`.  Change `masterll` to `master` in
  the section for selecting which branch of the software to use.
- In `home/pi/mycroft-core` do `git checkout master` and `git pull`.  This will get your
  system closer to the stable installation, before booting.
  *28 May 2019* maybe don't do this step.
- *Configure WiFi*: 

    echo -n your_password| iconv -t utf16le | openssl md4
    sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
    network={
        ssid="ssid network name"
        priority=1
        proto=RSN
        key_mgmt=WPA-EAP
        pairwise=CCMP
        auth_alg=OPEN
        eap=PEAP
        identity="user_name"
        password=hash:hash_key_here
        phase1="peaplabel=0"
        phase2="auth=MSCHAPV2"
    }
  
Boot the System
---------------

Install the microSD into the Raspberry Pi, and power it on.  You'll want a monitor and
keyboard hooked up.  I also recommend that you have a 2.5Amp+ power supply, and any
heat sinks already installed.  Also, have the microphone and speakers already attached.

The system will come to a setup Wizard.  Go with it.

- *Fix USB Audio* - The USB Audio option doesn't work for mono audio WAV files, which are most of the generated voice files for Mycroft.  `sudo nano /etc/mycroft/mycroft.conf` change `hw:0,0` to `plughw:0,0` for the `aplay` command.  Save and exit.  (Could this be done before booting the first time?)
- *Reboot* - After a while, the display will stop advancing.  Hit "Enter".  You should see a command prompt.  Type `reboot`.
- *Command Console* - The Command Line Interface (CLI) should start up and show you its progress.
- *Register Device* - Mycroft will ask you to register at [home.mycroft.ai](https://home.mycroft.ai/).  If you don't have
  an account, create one.  Go to `devices` and `Add a Device`.  Type the sequence of 6 characters that Mycroft reads to you,
  the name and description don't appear to matter.  The location does matter, if you want Mycroft to know the time zone.  If you miss the sequence, wait, Mycroft will read them again.
- *Wait* - Keep asking Mycroft the time "Hey Mycroft", *beep*, "what time is it?" until he gives you an answer.  About 1-2 minutes.
- *Raspbian Update* - We need to update the OS before we can install any new skills.  Hit "Enter" a few times until you see
  the command prompt. Then `sudo apt update`, `sudo apt dist-upgrade -y`.
- *Reboot* - Now type `reboot`.

Mycroft's head's up display should show up after the reboot has completed.

Finish Configuration
--------------------

- *Location* - Mycroft thinks he's in Kansas.  That's great, if he is.  But if not, you need to configure his location in the
  [web system](https://home.mycroft.ai/).  Find the device, by the name you gave it, and put in the location.  The city and state for US
  locations should be sufficient.  Save the changes in the website.  In a few minutes Mycroft should receive the updated information
  and give you the correct time.  "Hey Mycroft", *beep*, "What time is it?"
  

Install a Skill
---------------

- *Finished Booting* - "Hey Mycroft", *beep*, "Install finished booting skill", "Confirming: Shall I install finished booting by zelmon64?", "Yes".
  Now, whenever Mycroft restarts, he'll let you know when he's ready for action.

- *Pandora* - One pre-built skill to install is `Pandora`.  I have a free account on the music service.  If you don't
  go [sign up first](http://pandora.com/). "Hey Mycroft", *beep*, "Install Pandora", *Confirming: Shall I install mycroft pandora by MycroftAI?*, 
  "Yes".  Wait for the installation to complete.  Go the (home.mycroft.ai)[https://home.mycroft.ai/] under `Skill Settings` 
  to configure your user name and password for the Pandora skill.  `:quit`.  `nano .libao`.  Remove `pcm=0` and set `default_driver=alsa`.
  Now, `reboot` to get Mycroft to pickup the configuration. "Hey Mycroft", *beep*, "Play Pandora".




  
  
