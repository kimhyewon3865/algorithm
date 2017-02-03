//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct TTPlaylist {
    var lists: [Int] = []
}

let lists1 = [1,2,3,4,5,6,7,8,9,10]
let lists2 = [11,2,13,14,15,16,17,18,19,20]
let lists3 = [21,2,23,24,25,26,27,28,29,30]
let lists4 = [31,2,33,34,35,36,37,38,39,40]
let lists5 = [41,2,43,44,45,46,47,48,49,50, 51, 52, 53, 54, 55, 56, 57, 58]

let contents1 = TTPlaylist(lists: lists1)
let contents2 = TTPlaylist(lists: lists2)
let contents3 = TTPlaylist(lists: lists3)
let contents4 = TTPlaylist(lists: lists4)
let contents5 = TTPlaylist(lists: lists5)

var playlists = [TTPlaylist]()
playlists.append(contents1)
playlists.append(contents2)
playlists.append(contents3)
playlists.append(contents4)
playlists.append(contents5)

var singlePlaylist = TTPlaylist()


for playlist in playlists {
    for 곡 in playlist.lists {
        if singlePlaylist.lists.contains(곡) {
            continue
        }
        singlePlaylist.lists.append(곡)
        if singlePlaylist.lists.count >= max {
            break
        }
    }
}
print(singlePlaylist.lists.count)
print(singlePlaylist.lists)
