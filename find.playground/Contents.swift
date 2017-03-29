//: Playground - noun: a place where people can play
//find 1,000,000
//0~9

import UIKit

func factorial(n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

factorial(n: 9) * 2
// 0 1 2 3 4 5 6 7 8 9 : 0 시작 362880개 1시작 362880 2시작 274240번째
//1000000 - 725760


factorial(n: 8) * 6
//2 0 시작 40320개 2 1:40320 ~ 2 5 시작 32320번째
274240 - 241920

factorial(n: 7) * 6
32320 - 30240
// 2 5 0 :  2 5 5시작 2080번째


// 2 5 0 1 시작 640번째
factorial(n: 6) * 2
2080 - 1440

//2 5 0 1 4 시작 40번째
factorial(n: 5) * 5


factorial(n: 4) * 1
//2 5 0 1 4 3 시작 40 - 24 = 16번째

factorial(n: 3) * 2
//2 5 0 1 4 3 6 4번째

factorial(n: 2) * 2








//let number = Array(0..<10).reversed()
//var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//var result = ""
//func find() -> String{
//    for i in number {
//        let factorialn = factorial(n: i)
//        var count = 725760
//        for j in 1...i {
//            if factorialn * j > count {
//                print(count)
//                count = count - factorialn * arr[j - 1]
//                result += String(arr[j - 1])
//                arr.remove(at: j - 1)
//                break
//            }
//        }
//    }
//    return result
//}

//find()

func sayHello() -> String {
    return  "hello"
}
sayHello()

func findIndex(index i: Int, to: Int) -> Int {
    let f = factorial(n: i)
    for n  in 1...i {
        if f * n > to {
            return n - 1
        }
    }
   return 0
}

findIndex(index: 6, to: 32320)
