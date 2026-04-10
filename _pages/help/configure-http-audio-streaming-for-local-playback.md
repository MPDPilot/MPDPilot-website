---
layout: help_article
title: Configure HTTP audio streaming for local playback
include_in_header: false
include_in_footer: false
help_topic: true
help_topic_order: 4
help_topic_description: Configure MPD HTTP streaming for playback on your device.
---
To configure MPD for audio streaming, you will use its built-in HTTP server audio output feature. Here, that means HTTP streaming from MPD to MPD Pilot for local playback on your device.

Your MPD server must be reachable from your device, usually on the same local network. Once configured, MPD will stream audio over a TCP port, and MPD Pilot can pick up that stream and play it locally.

Here's an example configuration for your `mpd.conf`. Append the following text to your configuration file:

```plaintext
audio_output {
    type          "httpd"
    name          "My OPUS Stream"
    format        "48000:16:2"
    encoder       "opus"        # You can also use "flac", "vorbis", or "lame" for MP3
    port          "8000"        # Choose a port that's open on your network
    bitrate       "128000"      # Audio stream bitrate for OPUS, in bits per second
}
```

In the configuration above, the 'type' is set to "httpd" to enable the HTTP server function, and 'encoder' specifies the format of the audio. Beyond Opus, you can also use formats like FLAC or MP3. FLAC provides lossless compression but requires more bandwidth, while MP3 and Opus are usually more network-friendly.

For more details on MPD’s audio output plugins, check out the official documentation: [MPD Output Plugins](https://mpd.readthedocs.io/en/latest/plugins.html#httpd). Additionally, you can explore various encoder plugins here: [MPD Encoder Plugins](https://mpd.readthedocs.io/en/latest/plugins.html#encoder-plugins).

After updating your `mpd.conf` file with your desired settings, make sure to restart the MPD server to apply the changes. This could simply be done with a command like `systemctl restart mpd` on systems using systemd, but the exact command might differ based on your setup.

Now, to configure local playback in the MPD Pilot client, you’ll need to add a new stream. Go to the 'Settings', find 'Edit Connection', and navigate to 'Local Playback Settings'. Choose "Add New Stream..." and enter the HTTP-based URL that corresponds to your MPD setup. If you used the example configuration, this would typically look like `http://<your_server_IP>:8000` where `<your_server_IP>` is the IP address of your streaming server.

With these steps completed, you should now have MPD streaming your audio, and your MPD Pilot client is ready to play these streams on your local device.

If it does not work, double-check the server IP address, stream port, firewall settings, whether the configured output is enabled, and whether MPD was restarted after updating `mpd.conf`.
