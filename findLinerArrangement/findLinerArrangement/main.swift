//
//  main.swift
//  findLinerArrangement
//
//  Created by 김혜원 on 2017. 3. 29..
//  Copyright © 2017년 김혜원. All rights reserved.
//

import Foundation

func factorial(n: Int) -> Int {
    if n <= 1 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

func findLinerArr() -> String {
    var result = ""
    let number = Array(0...9).reversed()
    var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    var to = 1000000
    
    for i in number {
        let index = findIndex(index: i, to: to)
        result.append(String(arr[index]))
        to -= index * factorial(n: i)
        arr.remove(at: index)
    }
    return result
}

func findIndex(index i: Int, to: Int) -> Int {
    let f = factorial(n: i)
    for n  in 1...i+1 {
        if f * n >= to {
            return n - 1
        }
    }
    return 0
}

print(findLinerArr())
