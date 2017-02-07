//: Playground - noun: a place where people can play


/*
 어떤 수를 소수의 곱으로만 나타내는 것을 소인수분해라 하고, 이 소수들을 그 수의 소인수라고 합니다.
 예를 들면 13195의 소인수는 5, 7, 13, 29 입니다.
 
 600851475143의 소인수 중에서 가장 큰 수를 구하세요.
 */

import UIKit
import Foundation

func isPrime(n: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}


func find(number: Int) -> Int {
    var test = number
    var max = 0
    for i in 2...Int(sqrt(Double(number))) {
        if test % i == 0 {
            test = test / i
            max = i
        }
    }
    return max
}

var max = find(number: 600851475143)

///////////////////////////

//
//let number = 600851475143
//let root = sqrt(Double(number))
//
//
//func myIsPrime(n: Int) -> Bool {
//    for i in 2..<n {
//        if n % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//let prime: [Int] = Array(2...Int(root)).filter { i in myIsPrime(n: i)}
//var p = [Int]()
//
//func myFind(number: Int) -> Int {
//    var test = number
//        while !isPrime(n: test) {
//            for i in prime {
//                if test % i == 0 {
//                    test = test / i
//                    break
//                }
//            }
//        }
//    return test
//}
//
//max = myFind(number: number)
//
