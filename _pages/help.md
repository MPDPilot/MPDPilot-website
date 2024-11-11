---
layout: page
title: Help Center
include_in_header: true
header_order: 3
include_in_footer: false
---
# Help Center

## Table of Contents
1. <a href="#1-what-is-mpd" target="_self">What is MPD?</a>
2. <a href="#2-how-to-set-up-mpd" target="_self">How to set up MPD?</a>
3. <a href="#3-i-cant-connect-to-my-mpd-server" target="_self">I can't connect to my MPD server</a>
4. <a href="#4-how-to-configure-audio-streaming-for-local-playback" target="_self">How to configure audio streaming for local playback?</a>


---

### 1. What is MPD?

Music Player Daemon (MPD) is a popular open-source music server that plays music and organizes playlists. It was designed to separate the backend task of playing music from the front-end task of controlling it. This separation allows users to control playback on one device while the music plays on another, making MPD an ideal choice for those who want to stream music on a home network or manage audio in flexible environments.

MPD's architecture makes it compatible with various audio formats such as MP3, OGG, FLAC, and WAV, among others. MPD can access music from a variety of sources, including local files, network shares, and streams over the internet.

One of the standout features of MPD is its ability to interface with numerous third-party clients ranging from web interfaces to standalone desktop applications. These clients, which can be located on any device with network access to the server, allow a high degree of flexibility in how users interact with their music collections. This client-server model means that as long as you have access to the network, you can control your music playback from virtually anywhere.

As a highly configurable system, MPD supports various plugins and options that extend its functionality. Its minimalist design makes it especially appealing to tech-savvy users comfortable with command-line interfaces and scripting. MPD is available on several platforms, including Linux, BSD, macOS, and Windows, offering diverse deployment options for tech enthusiasts and audio purists alike.

### 2. How to set up MPD?

To set up an instance of Music Player Daemon (MPD), you'll need to consider a few key components and configurations to get started. At its core, MPD requires a computer or device with an operating system compatible with MPD such as Linux, macOS, or Windows. While you can utilize any computer, a popular choice is a Raspberry Pi coupled with an external DAC (Digital-to-Analog Converter) and amplifier for high-quality audio playback. This setup takes advantage of the compactness and efficiency of the Raspberry Pi, enabling a dedicated music streaming device.

Before diving into configuration, ensure your system meets minimal requirements: a modest CPU, some RAM (usually 512MB or more is sufficient), and a reliable internet connection if you plan to stream music online. Understanding that MPD operates with a client-server model, the server manages the music database and audio output, while clients offer different interfaces to control playback.

For those looking for simplified alternatives or enhanced features:
- consider [Mopidy](https://mopidy.com) with [MPD extension](https://github.com/mopidy/mopidy-mpd), which extends functionality by integrating streaming services and web interfaces
- other comprehensive solutions include [Volumio](https://volumio.org) and [MoOde Audio](https://moodeaudio.org), which offer user-friendly interfaces and additional features tailored for embedded systems like Raspberry Pi
- audiophile-grade systems such as [Bryston](https://bryston.com) and [Chord Poly](https://chordelectronics.co.uk/product/poly) provide high-fidelity options incorporating MPD at their core.

To proceed with a step-by-step installation, you can refer to specific guides:
- [How to set up MPD](https://www.youtube.com/watch?v=XpzNdXtpKDc) (video tutorial)
- [Setting up a headless Raspberry Pi as a Music Player Daemon server](https://www.lesbonscomptes.com/pages/raspmpd.html)
- [Music Player Daemon: simple setup](https://blog.desdelinux.net/en/music-player-daemon-simple-configuration-and-some-extra-uses/)
- [Configuring the MPD music server on Ubuntu](https://linuxconfig.org/configuring-the-mpd-music-server-on-ubuntu-linux)
- [MPD Official User's Manual](https://mpd.readthedocs.io/en/latest/user.html)

These guides provide detailed instructions on downloading, installing, and configuring MPD on their respective platforms, ensuring a seamless setup process.

With these foundations and options in mind, you can tailor your MPD environment to suit your specific audio requirements, whether you're aiming for a minimalist server setup or a rich, audiophile experience.

### 3. I can't connect to my MPD server

If you face difficulties with connecting MPD Pilot to your MPD server, check out the following steps that may help you to resolve network, server or configuration issues.

#### Check Your Network Connection
Ensure that both your device and the MPD server are connected to the same local network. In cases where devices are connected to different subnets or VLANs, communication might be blocked.

#### Verify Server Address and Port
Double-check the server's host name and port number in the app settings. These must match the settings on the MPD server.

#### Firewall and Security Settings
Check the firewall settings on your router and MPD server. Make sure that the port you are using for MPD (usually 6600) is open and accessible. Some routers may require you to explicitly allow traffic on this port.

#### MPD Server Status
Check if the MPD server is running and not experiencing any issues. Restarting the server might resolve some issues.

#### Use a Static IP Address
Try using a static IP address instead of a DNS-like hostname. Sometimes the issue can be related to incorrect DNS settings or problems with resolving the server's hostname.

#### Update MPD Pilot and MPD Server
Ensure that MPD Pilot and MPD server are updated to the latest versions to benefit from the latest features and fixes.

#### Restart Device and MPD Server
Try restarting both your device and the MPD server to refresh network connections.


### 4. How to configure audio streaming for local playback?


To configure MPD for audio streaming, you will use its HTTP server audio output feature. This allows MPD to stream music over a specified TCP port, from where it can be picked up and played locally on your device using the MPD Pilot client. Essentially, you'll set MPD to stream the audio and then configure MPD Pilot to consume the stream and handle the actual playback on your device.

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

In the configuration above, the 'type' is set to "httpd" to enable the HTTP server function, and 'encoder' specifies the format of the audio. Beyond Opus, you can use formats like FLAC or MP3. Each format has its own pros and cons. FLAC provides lossless compression but requires more bandwidth, while MP3 and Opus offer lossy compression but are more network-friendly. 

For more details on MPD’s audio output plugins, check out the official documentation: [MPD Output Plugins](https://mpd.readthedocs.io/en/latest/plugins.html#httpd). Additionally, you can explore various encoder plugins here: [MPD Encoder Plugins](https://mpd.readthedocs.io/en/latest/plugins.html#encoder-plugins).

After updating your `mpd.conf` file with your desired settings, make sure to restart the MPD server to apply the changes. This could simply be done with a command like `systemctl restart mpd` on systems using systemd, but the exact command might differ based on your setup.

Now, to configure local playback in the MPD Pilot client, you’ll need to add a new stream. Go to the 'Settings', find 'Edit Connection', and navigate to 'Local Playback Settings'. Choose "Add New Stream..." and enter the HTTP-based URL that corresponds to your MPD setup. If you used the example configuration, this would typically look like `http://<your_server_IP>:8000` where `<your_server_IP>` is the IP address of your streaming server.

With these steps completed, you should now have MPD streaming your audio, and your MPD Pilot client is ready to play these streams on your local device. This setup allows you to benefit from centralized stream management while enjoying your music at the best quality and format that works for your network conditions and personal preferences.

## Still having a problem or question?

If you couldn't find the answer to your problem, have a question or feedback, or discovered a bug in MPD Pilot, feel free to email us at [support@mpdpilot.app](mailto:support@mpdpilot.app).
