//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var intArr = [4, 19, 30, 18]
//var maxN = intArr.reduce(0) { currentMax, i in max(currentMax, i) }
//maxN

var intArr = [4, 19, 30, 18]
var maxN = intArr.reduce(0) { currentMax, i in max(currentMax, i) }
maxN
intArr.index(of: maxN)

var intArray = Array.init(repeating: 0, count: 4)
intArr[0] = 1
