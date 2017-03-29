//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var winner = "010-3011-9448, 010-1234-5678"
var winnerArr: [String] = []

var winnerName = ""
for i in winner.characters {
    if i == "," {
        winnerArr.append(winnerName)
        winnerName = ""
    } else { winnerName.append(i) }
}
winnerArr.append(winnerName)
