//: Playground - noun: a place where people can play

import UIKit

let N = 8 //목적지

var maze = [[0, 0, 0, 0, 0, 0, 0, 1],
            [0, 1, 1, 0, 1, 1, 0, 1],
            [0, 0, 0, 1, 0, 0, 0, 1],
            [0, 1, 0, 0, 1, 1, 0, 0],
            [0, 1, 1, 1, 0, 0, 1, 1],
            [0, 1, 0, 0, 0, 1, 0, 1],
            [0, 0, 0, 1, 0, 0, 0, 1],
            [0, 1, 1, 1, 0, 1, 0, 0]]

let pathwayColour = 0 //white
let wallColour = 1 //blue
let blockedColour = 2 //red
let pathColour = 3 //green
//
//func findMazePath(x: Int, y: Int) -> Bool {
//    if x < 0 || y < 0 || x >= N || y >= N {
//        return false
//    } else if maze[x][y] != pathwayColour {
//        return false
//    } else if x == N - 1 && y == N - 1 {
//        maze[x][y] = pathColour
//        return true
//    } else {
//        maze[x][y] = pathColour
//        if findMazePath(x: x - 1, y: y) || findMazePath(x: x, y: y + 1) || findMazePath(x: x + 1, y: y) || findMazePath(x: x, y: y - 1) {
//            return true
//        }
//        maze[x][y] = blockedColour
//        return false
//    }
//}
//
//func printMaze() {
//    for i in 0..<8 {
//        for j in 0..<8 {
//            if j != 7 {
//                print(maze[i][j], separator: "", terminator: "")
//            } else {
//                print("\n")
//            }
//        }
//    }
//}
//
////printMaze()
////findMazePath(x: 0, y: 0)
////printMaze()

print("helo")



