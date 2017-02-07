//: Playground - noun: a place where people can play

// 10미만의 자연수에서 3과 5의 배수를 구하면 3,5,6,9이다. 이들의 총합은 23이다.
// 1000미만의 자연수에서 3,5의 배수의 총합을 구하라.

import UIKit

//var total: IntMax = 0
//
//for i in 1 ..< 1000 {
//    if i % 3 == 0 || i % 5 == 0 {
//        total = total + i
//    }
//}
//print(total)


var totalArr = [Int]()
totalArr = Array(1..<1000).filter { number in number % 3 == 0 || number % 5 == 0 }
var total = totalArr.reduce(0) { total, number in total + number}
print(total)
