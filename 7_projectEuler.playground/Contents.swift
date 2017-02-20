//: Playground - noun: a place where people can play

/*
 소수를 크기 순으로 나열하면 2, 3, 5, 7, 11, 13, ... 과 같이 됩니다.
 
 이 때 10,001번째의 소수를 구하세요.
 */
import UIKit

func isPrime(n: Int) -> Bool {
    var sq = Int(sqrt(Double(n)))
    if sq > 2 {
        for i in 2...sq {
            if n % i == 0 {
                return false
            }
        }
    }
    return true
}


func getPrimeNum(find: Int) -> Int {
    var index = 1
    var n = 1
    
    while index < find {
        n = n + 2
        if isPrime(n: n) { index += 1 }
    }
    
    return n
}

//getPrimeNum(find: 10001)



/*
1 3 7 9 로 끝나는것중안나뉘는것
i % 2 != 0 

 */
