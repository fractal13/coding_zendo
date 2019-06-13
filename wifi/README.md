WiFi Configuration
------------------

These notes are based on the [Picroft WiFi Notes](https://mycroft.ai/documentation/picroft/#connecting-picroft-to-a-wired-or-wifi-network).

WiFi networks and access credentials are configured in the system
configuration file `/etc/wpa_supplicant/wpa_supplicant.conf`.  In our
image, we stored two sample entries.  One for an enterprise network
configuration, such as large institutions implement, and one for
a typical home network.  It is allowed to have many networks
configured.  This is handy if your device will be moving around.

To set network specific configurations, you'll need to follow these
steps:

Home Network
------------

Home network entries look like this:

    network={
      ssid="MyNetworkSSID"
      psk="mypassword"
    }
    
where `MyNetworkSSID` is replaced with the name of your home
network, and `mypassword` is replaced with the password.
We've put a sample in the configuration file to make it easy
to copy and create a new entry.

- *Obtain a $ prompt*:  Usually by `:quit` from the console.
- *Edit the file*: `sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`
- *Add a network entry*: Copy the existing entry, and replace the network name and password.
- *Save*: Save the file.  Usually with `Ctrl-o`, `<enter>`.
- *Done editing*: Exit the editor.  Usually with `Ctrl-x`.
- *Reboot*: It may be necessary to reboot for the change to take effect. `sudo reboot`.

Enterprise Network
------------------

We have also put an example of this in the configuration file. Read 
details from the link above for how to fill it out correctly.


