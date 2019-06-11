Customization
-------------

Changing Mycroft's Wake-word
----------------------------

The wake word is a short sound that is used to let Mycroft know you are requesting
its assistance.  You can change it quickly to one of a few preset phrases, or
with a little work, to any pronounceable phrase.

## Setting a Preset Phrase

These instructions are just editing the device configuration on the website.

- *home.mycroft.ai*: Login to [home.mycroft.ai](http://home.mycroft.ai/)
- *Devices*: Select `Devices` from the menu.
- *Find the device*: Select the device to change.
- *Wake Word*: Select the desired phrase.
- *Save*: Press the `Save` button.


## Setting a Custom Phrase

These instructions use the advanced settings following [these instructions](https://mycroft.ai/documentation/home-mycroft-ai-pairing/#changing-your-wake-word).

- *Choose phrase*: Choose a phrase you would like to use.  It should be short, but not too short.
  Choose something that won't be said accidentally, which will activate Mycroft unintentionally.
  For this example, we will use, `abracadabra`.
- *Find Phonemes*: Use the [CMU Dictionary](http://www.speech.cs.cmu.edu/cgi-bin/cmudict) to 
  identify the phonemes, the basic sounds, that are used to pronounce your phrase.  For example, `AE B R AH K AH D AE B R AH .`.
- *Edit Config File*: On the Mycroft system, edit `nano /home/pi/.mycroft/mycroft.conf`.  Add this clause, if it isn't already there.  Just change it if it is already there.  We may need to talk about JSON here.


    "listener": {
      "multiplier": 1,
      "phonemes": "AE B R AH K AH D AE B R AH .",
      "wake_word": "abracadabra",
      "threshold": "1e-25",
      "energy_ratio": 1.5,
      "sample_rate": 16000,
      "channels": 1
    }
    

  Assuming you place this at the end, inside of the `{}` that are already there, you will need to put a `,` at the end
  of the entry that used to be the last item there.

- *Restart*: `sudo reboot`
