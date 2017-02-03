//: Playground - noun: a place where people can play
//
//1부터 10,000까지 8이라는 숫자가 총 몇번 나오는가?
//8이 포함되어 있는 숫자의 갯수를 카운팅 하는 것이 아니라 8이라는 숫자를 모두 카운팅 해야 한다.

import UIKit

var str = "Hello, playground"

var count8 = 0

for i in 1 ..< 10000 {
    var number = i
    let intToString = String(number)
    if intToString.contains("8") {
        repeat {
            if number % 10 == 8 {
                count8 = count8 + 1
            }
            number = number / 10

        } while number != 0
    }
}
print(count8)

//var contain8array = [Int]()
//var count = 0
//
//contain8array = Array(1..<10000).filter { number in String(number).contains("8")}

