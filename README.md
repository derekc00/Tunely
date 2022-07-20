# Tunely

## Description

A basic iOS app written in Swift that displays tracks from the iTunes API. There are two tabs. The first shows a list of tracks. Clicking on a track presents a detail view showing more information about the track. The second shows a grid of album covers. No detail view is provided for albums.

## Prerequisites

- [Nuke](https://github.com/kean/Nuke) (Image Loading System)

The prerequisite(s) are installed using Swift Package Manager instead of Cocoapods. Upon the first build, SPM should download the dependencies automatically.

## Installation

- Clone/Download the app to your Mac
- Check that you have the latest build of [XCode](https://developer.apple.com/support/xcode/) installed.

## Choosing your own Tracks

Use the [iTunes Api](https://developer.apple.com/library/archive/documentation/AudioVideo/Conceptual/iTuneSearchAPI/Searching.html#//apple_ref/doc/uid/TP40017632-CH5-SW1) to receive tracks (songs) and albums to display in a list and grid layout

Example request: Get a limit of 200 songs by Jack Johnson:

`https://itunes.apple.com/search?term=jack_johnson&country=US&media=music&limit=200`

Students can replace the `term` with their favorite artist:

`https://itunes.apple.com/search?term=<insert_artist>&country=US&media=music&limit=200`

Save the file with the ".json" extension and place inside Resources/iTunes_API_Responses.

## Notes for Technical Writers

### Strech goals for students

- Album detail view when tapping a album cell. Currently, there is no action when tapping a cell since there is only a track detail view.
  - checkout [this commit](https://github.com/derekc00/Flix/commit/3588e077d2f9d7ab5e5c17b98dc4502bde2aee9a) for first steps to do this.
  - create a second navigation controller
  - reconfigure network call in SceneDelegate file
  - create a second detail view specific for albums
- Implement functionality to play tracks
  - Response includes a `trackViewUrl` and `previewUrl` which point to a iTunes preview and mp4 file respectively
- Provide link to iTunes page of the track and/or album

## Lastest Build

![current state](https://user-images.githubusercontent.com/43795676/179388837-317aae47-3e15-49c6-9f7a-7239fa6d59e2.gif)

## Contributing

- Use the Issue Tracker: <https://github.com/derekc00/Tunely/issues>

## License

- MIT LICENSE

## Contact

- Derek Chang (contract dev - July 2022, former iOS Guru): derekchangc00@gmail.com
