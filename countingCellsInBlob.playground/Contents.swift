//: Playground - noun: a place where people can play

import UIKit

enum Cell: Int {
    case imagePixel = 0
    case backgorundPixel = 1
    case already = 3
}
let grid = 8

var pixel = [[0,1,1,1,1,1,1,0],
             [1,0,0,1,1,0,1,1],
             [0,0,1,1,0,1,0,1],
             [1,1,1,1,1,0,1,1],
             [1,0,1,0,1,0,1,1],
             [1,0,1,0,1,0,1,1],
             [0,1,1,1,0,1,1,0],
             [1,0,0,1,1,0,0,0]]

func countCells(x: Int, y: Int) -> Int {
    if x >= grid || y >= grid || x < 0 || y < 0 {
        return 0
    } else if pixel[x][y] != Cell.imagePixel.rawValue {
        return 0
    } else {
        pixel[x][y] = Cell.already.rawValue
        return 1 + countCells(x: x, y: y + 1) + countCells(x: x + 1, y: y + 1) + countCells(x: x + 1, y: y) + countCells(x: x + 1, y: y - 1) + countCells(x: x, y: y - 1) + countCells(x: x - 1, y: y - 1) + countCells(x: x - 1, y: y) + countCells(x: x - 1, y: y + 1)
    }
}

countCells(x: 7, y: 7)