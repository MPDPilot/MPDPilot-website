---
layout: page
title: Change Log
include_in_header: true
---
# Change Log

## Release 3.5.0 `latest`
**Sep 17, 2024**

- Added support for MPD stored playlists management
- Incremental queue updates
- Improved support for seeking with legacy MPD versions (pre 0.17.0)

## Release 3.4.0
**Jun 23, 2024**

- Changed local playback backend to libmpv, resulting with improved buffering stability and status reporting reliability
- Improved discovery of local-network MPD servers with Bonjour
- Faster loading of album cover arts from MPD server
- More graceful behavior on network handover
- More descriptive error message in case of missing server permissions
- Various other bug fixes and stability improvements

## Release 3.3.1
**Jun 16, 2024**

- Accessibility improvements
- UI layout improvements

## Release 3.3.0
**Jun 10, 2024**

- Cover art support in library, queue and search results
- Consume and single playback modes control
- In-app donations with Apple Pay
- More robust server connection maintenance (faster initial sequence, eliminated known race condition)
- Drag-n-drop reordering on connections and local playback streams list (iOS 16+ only) 
- Improved support for parsing DSD song quality information
- Improved MPD protocol compatibility (which bug fixed 00:00 track lengths in Mopidy)
- Introduced limit for recursive directories traversal when adding the whole folder to a queue
- A number of other UI/UX improvements and bug fixes

## Release 3.2.1 `latest`
**May 01, 2024**

Bug fixing connection to older MPD versions.

## Release 3.2.0
**Apr 29, 2024**

- Show album cover images fetched from MPD collection
- UI theme selection (light, dark, system default)
- Support for `tagtypes` MPD commands in order to reduce network traffic
- Locate found song within its library folder
- Significant navigation redesign and other UI improvements

## Release 3.1.1
**Mar 18, 2024**

- Display errors from server status
- Display connection name on the connection status screen 
- Display server MPD version after the successful connection test 
- Accessibility improvements
- Volume slider bug fixes 
- iPad layout fix

## Release 3.1.0 
**Feb 29, 2024**

- Song search in the MPD database
- Experimental support for iPad
- Library view improvements (pull to refresh, re-worked updating db view)
- Fast seek by 10s forwards and backwards
- Display currently playing song in now playing info (on local playback only)
- Fixed handling of folder and song names with double quotes

## Release 3.0.3
**Feb 17, 2024**

Bug fixes and stability improvements.

## Release 3.0.2 
**Feb 10, 2024**

Bug fixes and stability improvements.

## Release 3.0.1
**Feb 6, 2024**

- Guess song artist and album names from the folder structure, if the tags are not available
- Added keyboard toolbar when editing form fields

## Release 3.0.0
**Jan 25, 2024**

- Added support for multiple MPD server connections
- Automatic discovery of local MPD instances using Bonjour/Zeroconf protocol
- Ability to define multiple local playback stream URLs (with various bitrate and audio quality)
- Improved compatibility with Mopidy server
- Local playback: fixed crashes when playing FLAC streams
- Fixed navigation crash on iOS 17
- Numerous bug fixes and stability improvements

## Release 2.4.2
**Jul 20, 2023**

Bunch of bug fixes:
- Resolved issue when trying to enqueue large folders
- Fixed incorrect items being highlighted on the queue screen
- Improvements in local playback control
- Fixed wrong DB update status indicator

## Release 2.4.1
**Jul 11, 2023**

- Fixed incorrect behaviour of lock screen controls (prev & next) during local playback

## Release 2.4.0
**Jul 2, 2023**

- Fixed a few bugs around connection state management
- Improved performance of the library view, resulting with better handling of large collections
- Improved UX for missing server's permissions, when MPD password is required
- App navigation improvements
- Support for local playback of the OPUS streams

## Release 2.3.0
**Jun 5, 2023**

- Improved player screen accessibility 
- Fixed issue with adding folders to the queue 
- Fixed issue with song info not available after connection restart

## Release 2.2.2
**Jan 13, 2023**

- Fixed issue with drag&drop moving tracks in the Queue screen.

## Release 2.2.1
**Jan 11, 2023**

- Fixed issue with swiping to the intermediate screen

## Release 2.2.0
**Jan 8, 2023**

- Redesigned Settings and Outputs screens
- Ability to enqueue custom stream URL
- Less network transfer required for status updates, due to implemented connection idling
- Confirmation prompt before replacing the whole queue

## Release 2.1.0
**Jan 1, 2023**

- Added local playback buffer size control
- Bunch of bug fixes and performance improvements

## Release 2.0.1
**Dec 3, 2022**

- Bug fixes and stability improvements.

## Release 2.0.0
**Nov 22, 2022**

- Rebuild most of the application UI
- Local playback of MPD output audio stream (on speakers, headphones, AirPlay devices, Bluetooth audio devices)
- Displaying track's quality info (sampling rate, bit-rate, format info)
- Countless bug fixes and stability improvements

## Release 1.2.0
**Dec 7, 2021**

- Ability to refresh the library and check for the latest files on the server
- Better "stop" playback state handling
- Disabled "Clear All" and "Edit" queue buttons when the queue is empty
- Fixes for some iOS 15 UI issues

## Release 1.1.1
**Apr 10, 2021**

- Bug fixes and stability improvements.

## Release 1.1.0
**Apr 4, 2021**

New features for the library screen:

- Replace current queue with the current library entry
- Add item to the queue and play immediately
- Items added to the queue keep correct tracks order
- Improved folder entries preview, so longer names are visible

## Release 1.0.4
**Jan 28, 2021**

- Bug fixes and stability improvements.

## Release 1.0.3
**Nov 30, 2020**

- Bug fixes and stability improvements.

## Release 1.0.2
**Nov 23, 2020**

- Bug fixes and stability improvements.

## Release 1.0.1
**Oct 25, 2020**

- Bug fixes and stability improvements.

## Release 1.0.0 `initial release`
**Oct 24, 2020**

- First version of the app published in App Store.
