//: Playground - noun: a place where people can play
/*
 1 ~ 10 사이의 어떤 수로도 나누어 떨어지는 가장 작은 수는 2520입니다.
 
 그러면 1 ~ 20 사이의 어떤 수로도 나누어 떨어지는 가장 작은 수는 얼마입니까?
 */

import UIKit

func getDivisor(number: Int) -> Array<Int> {
    var n = number
    var divisors: [Int] = []
    let lastIndex = Int(sqrt(Double(n)))
    
    if lastIndex > 1 {
        for i in 2...lastIndex {
            while n % i == 0 {
                divisors.append(i)
                n = n / i
            }
            if i == lastIndex && n != 1 {
                divisors.append(n)
            }
        }
    } else {
        divisors.append(n)
    }
    
    return divisors
}

func findTotal() -> Int {
    var total = 1

    for i in 2...20 {
        if total % i != 0 {
            let array = getDivisor(number: i)
            var tmp = total
            for i in array {
                if tmp % i != 0 {
                    total *= i
                    
                } else {
                    tmp = tmp / i
                }
            }
            
        }
    }
    
    return total
}

findTotal()


func getTotal(divisors: Array<Int>, total: Int) -> Int {
    var result = total
    var tmp = total
    
    for i in divisors {
        if tmp % i != 0 { result *= i }
        else { tmp = tmp / i }
    }
    
    return result
}

func getDivisor2(number: Int) -> Array<Int> {
    var n = number
    var divisors: [Int] = []
    let lastIndex = Int(sqrt(Double(n)))
    
    if lastIndex > 1 {
        Array(2...lastIndex).forEach {
            while n % $0 == 0 {
                divisors.append($0)
                n = n / $0
            }
            
            if lastIndex == $0 && n != 1 { divisors.append(n) }
        }
    } else { divisors.append(n) }
    
    return divisors
}

func findTotal2() -> Int {
    var total = 1
    
    Array(2...20).forEach { if total % $0 != 0 { total = getTotal(divisors: getDivisor2(number: $0), total: total) } }
    return total
}

findTotal2()

Array(2...20).map { if Int(sqrt(Double($0))) > 1 {
    Array(2...Int(sqrt(Double($0)))).forEach{ _ in } } else {} }




