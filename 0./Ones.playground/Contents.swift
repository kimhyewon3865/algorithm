//: Playground - noun: a place where people can play

import UIKit

var findNum = 1
var n: Double = 9

func makeDemicalNumber(binary: Int) -> Double {
    var tmp = binary
    var result = 0.0
    var i = 0.0
    while tmp != 0 {
        if tmp%10 == 1 {
            result += pow(2.0, i)
        }
        i += 1
        tmp = tmp / 10
    }
    return result
}

while(true) {
    if makeDemicalNumber(findNum) % n == 0 && makeDemicalNumber(findNum) != n {
        break
    } else {
        findNum = findNum * 10 + 1
    }
}
//큰숫자가 안되니까 스트링으로 바꾸면 어떨까?!!!?

print(findNum)



/*
 2나 5로 나눌 수 없는 0 이상 10,000 이하의 정수 n이 주어졌는데, n의 배수 중에는 10진수로 표기했을 때 모든 자리 숫자가 1인 것이 있다. 그러한 n의 배수 중에서 가장 작은 것은 몇 자리 수일까?
 
 Sample Input
 
 3
 7
 9901
 Sample Output
 
 3
 6
 12
 */