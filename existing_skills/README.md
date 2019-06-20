Existing Skills
---------------

There are many skills all ready to go.  Here, we list a few that
needed some special attention to get them working correctly.

Pandora
-------

The [Pandora](http://pandora.com/) is a great music service that allows users
to listen for free, with ads, or without ads for a premium.  Either
way you must have an account.

- *Pandora Account*: If you don't have an account, [sign up first](http://pandora.com/).  If you do, be sure to verify your
  Pandora account email and password.
- *Update Software*: If you haven't done it previously, you'll want to obtain a `$` prompt and `sudo apt update`, so that 
  Mycroft knows the latest software available.  You can get the console back with `mycroft-cli-client`.
- *Install*: Use your wake word, then say "Install Pandora".  Confirm, and wait for the installation to complete.  This
  may take a couple of minutes.  Mycroft will tell you when it is completed.
- *Configure the Skill*: Visit [home.mycroft.ai](https://home.mycroft.ai/).  On the menu, find skills, and go to Pandora.  Expand
  the box, and enter your Pandora account email and password.  In a minute or two, Mycroft will tell you that the Pandora
  skill has been configured, and it needs to reboot.  Wait to reboot.
- *Fix Audio Configuration*: Obtain the `$` prompt.  Edit the Pandora audio configuration file `nano ~/.libao`.  Remove `dev=0`.
  Change `default_driver=alsa`.  Save and exit nano.
- *Reboot*: Still at the `$` prompt, `sudo reboot`.
- *Play*: After reboot has completed, use your wake word, then "Play Pandora".




  
  
