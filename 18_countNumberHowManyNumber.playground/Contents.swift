//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var countNumber = [Int](count: 10, repeatedValue: 0)


for i in 10 ... 15 {
    var tmp = i
    while tmp != 0 {
        countNumber[tmp%10] += 1
        tmp = tmp/10
    }
}

print(countNumber)
