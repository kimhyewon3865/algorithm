//: Playground - noun: a place where people can play

/*
 N!의 정의는 다음과 같습니다.

N! = 1 * 2 * 3 * 4 … N
이때 N!를 정수로 변환 해 뒤에서 부터 연속되는 0의 갯수를 구하세요.

예) f(12) -> 2 # 12!은 479001600 f(25) -> 6 # 25!은 15511210043330985984000000
 */

import UIKit

var countZero = 0

func countTailZeroFactorial(n: Int) -> Int {
    for i in 1...n {
        var tmp = i
        while tmp % 5 == 0 {
            countZero = countZero + 1
            tmp = tmp / 5
        }
    }
    return countZero
}

countTailZeroFactorial(n: 25)

var c = 0
var total = Array(1...25)
    .filter { n in n  % 5 == 0 }.reduce(0) { total, n in  }
