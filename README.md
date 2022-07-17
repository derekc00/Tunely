## Tunely
Use the [iTunes Api](https://developer.apple.com/library/archive/documentation/AudioVideo/Conceptual/iTuneSearchAPI/Searching.html#//apple_ref/doc/uid/TP40017632-CH5-SW1) to receive tracks (songs) and albums to display in a list and grid layout

Example request to receive 200 tracks by Jack Johnson

`https://itunes.apple.com/search?term=jack_johnson&country=US&media=music&limit=200`

Student can replace the term with their favorite artist like this

`https://itunes.apple.com/search?term=doja_cat&country=US&media=music&limit=200`

![current state](https://user-images.githubusercontent.com/43795676/179388837-317aae47-3e15-49c6-9f7a-7239fa6d59e2.gif)


## Todo

## Architecture
- MVC (Model View Controller)

## Potholes to beware (for tech writers)
1. 

## Strech goals for students
- Album detail view when tapping a album cell. Currently, there is no action when tapping a cell since there is only a track detail view.
    - checkout [this commit](https://github.com/derekc00/Flix/commit/3588e077d2f9d7ab5e5c17b98dc4502bde2aee9a) for first steps to do this.
    - will need to create a second navigation controller
    - will need to reconfigure network call in SceneDelegate file
- Find creative ways to use the information from the json response such as using the iTunes links

