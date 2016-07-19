//: Playground - noun: a place where people can play

import UIKit

var s = [1,3,4,8,13,17,20]

var shortestDistance : Int!
var points = [(Int, Int)]()
var shortesPoint: (Int, Int)

shortestDistance = s[1] - s[0]
shortesPoint = (s[0], s[1])

let result = s.prefix(s.count - 1).enumerate().map { ($1, s[$0 + 1]) }
print(result)

for i in result {
    let distance =  i.1 - i.0
    if shortestDistance > distance {
        shortestDistance = distance
        shortesPoint = i
    }
}
print(shortesPoint)
print(shortestDistance)
