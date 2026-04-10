---
layout: help_article
title: How to set up MPD?
include_in_header: false
include_in_footer: false
help_topic: true
help_topic_order: 2
help_topic_description: Suggested starting points and setup guides for new MPD users.
---
Setting up MPD usually starts with three things: a device that will run the music server, access to your music files, and an audio output path. A Raspberry Pi is a common choice, but MPD can also run on a Linux server, NAS, desktop computer, or other always-on device.

Many people choose MPD because it gives them a flexible, self-hosted setup for their own music library. It works especially well if you are comfortable editing configuration files, using SSH, or tuning a system to match your audio hardware and listening habits.

There are also several alternatives around the MPD ecosystem that work well with MPD Pilot. [Mopidy](https://mopidy.com) with the [MPD extension](https://github.com/mopidy/mopidy-mpd) and [OwnTone](https://owntone.github.io/owntone-server/) are server implementations that expose the MPD protocol while adding their own features and integrations. [Volumio](https://volumio.org) and [MoOde Audio](https://moodeaudio.org) are more complete audio-player systems that package this kind of setup into a more integrated environment, often on Raspberry Pi hardware.

## What to Expect

In most setups, you will need to:

- choose the device that will run the server
- install MPD or an MPD-compatible system
- point it to your music library or network shares
- configure audio output
- make sure the server is reachable on your local network

If you are building a Raspberry Pi player, you may also need to think about your DAC, amplifier, storage location, and whether you want Ethernet or Wi-Fi.

## Recommended Resources

If you want to set up a plain MPD server:

- [MPD official website](https://www.musicpd.org/)
- [MPD User's Manual](https://mpd.readthedocs.io/en/latest/user.html)
- [Setting up a headless Raspberry Pi as a Music Player Daemon server](https://www.lesbonscomptes.com/pages/raspmpd.html)
- [Configuring the MPD music server on Ubuntu Linux](https://linuxconfig.org/configuring-the-mpd-music-server-on-ubuntu-linux)

If you want an MPD-compatible system with more built-in integrations or a more guided setup:

- [Mopidy installation guide](https://docs.mopidy.com/stable/installation/)
- [moOde setup guide](https://github.com/moode-player/docs/blob/main/setup_guide.md)

Additional community guides that may also be useful:

- [Beginner’s Guide to Setting Up and Using MPD](https://forum.endeavouros.com/t/beginner-s-guide-to-setting-up-and-using-mpd/16831)
- [Playing music on Linux (the simple way)](https://www.youtube.com/watch?v=6EAID9yopIE)

Choose the guide that best matches the kind of setup you want. Once your server is running and reachable on the network, you can connect to it from MPD Pilot.
