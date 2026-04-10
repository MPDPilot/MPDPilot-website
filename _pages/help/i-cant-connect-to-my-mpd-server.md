---
layout: help_article
title: I can't connect to my MPD server
include_in_header: false
include_in_footer: false
help_topic: true
help_topic_order: 3
help_topic_description: Basic troubleshooting steps for connection problems.
---
If you face difficulties with connecting MPD Pilot to your MPD server, check out the following steps that may help you to resolve network, server or configuration issues.

## Check Your Network Connection

Ensure that both your device and the MPD server are connected to the same local network. In cases where devices are connected to different subnets or VLANs, communication might be blocked.

## Verify Server Address and Port

Double-check the server's host name and port number in the app settings. These must match the settings on the MPD server.

## Firewall and Security Settings

Check the firewall settings on your router and MPD server. Make sure that the port you are using for MPD (usually 6600) is open and accessible. Some routers may require you to explicitly allow traffic on this port.

## MPD Server Status

Check if the MPD server is running and not experiencing any issues. Restarting the server might resolve some issues.

## Use a Static IP Address

Try using a static IP address instead of a DNS-like hostname. Sometimes the issue can be related to incorrect DNS settings or problems with resolving the server's hostname.

## Update MPD Pilot and MPD Server

Ensure that MPD Pilot and MPD server are updated to the latest versions to benefit from the latest features and fixes.

## Restart Device and MPD Server

Try restarting both your device and the MPD server to refresh network connections.
