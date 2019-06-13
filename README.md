Installation of Mycroft on Raspberry Pi
---------------------------------------

These notes build and install a Mycroft voice assistant
on the Raspberry Pi.  They include instructions for
purchasing equipment, cutting and assembling a case,
and building a few custom skills.

Hardware Selection
------------------

Here are the parts we selected.  The microphone and speakers are USB
only, simplifying power supply issues for a contained box. It is important
that the power supply be at least 2.5 Amps.  The SD Card must be at least
8 GB.  The 16 GB did not cost any more than the 8 GB at the time of
purchase.

- Raspberry Pi: [CanaKit Raspberry Pi 3 B+ (B Plus) with 2.5A Power Supply (UL Listed)](https://www.amazon.com/CanaKit-Raspberry-Power-Supply-Listed/dp/B07BC6WH7V/ref=sr_1_2_sspa?keywords=raspberry+pi+3+b%2B&qid=1558985414&s=gateway&sr=8-2-spons&psc=1)  Includes RPI 3B+, 2.5A power supply, and heat sinks.
- Microphone: [Sony Play Station Eye](https://www.amazon.com/Sony-Station-Camera-Packaging-PlayStation-3/dp/B0735KNH2X/ref=sr_1_1?keywords=sony+playstation+eye&qid=1560385064&s=gateway&sr=8-1)
- Speaker: [Mini USB Speaker] (https://www.amazon.com/HONKYOB-Speaker-Computer-Multimedia-Notebook/dp/B075M7FHM1/ref=sr_1_2?keywords=Mini+External+USB+Stereo+Speaker&qid=1560385201&s=gateway&sr=8-2)
- SD Card: [SanDisk 16GB MicroSD] (https://www.amazon.com/SanDisk-Ultra-microSDXC-Memory-Adapter/dp/B073K14CVB/ref=sr_1_4?keywords=Micro%2BSD%2BCard&qid=1558986929&s=gateway&sr=8-4&th=1)


Disk Image
----------

TBA


Audio Output
------------

We experienced a few anomalies in our audio output.
Check out [these instructions](audio/) for our solution.

WiFi Configuration
------------------

See our [notes on wifi](wifi/).

Creating the Case
-----------------

[Our case build instructions](laser-cut-case/).


Customizing Mycroft
-------------------

We completed several customization steps to personalize
our Picroft installation.  See [what we did](customization/).

Creating a Skill
----------------

[Create your first skill](skills/)
