//: Playground - noun: a place where people can play

import UIKit
let N = 8
var cols: [Int] = Array(repeating: 0, count: N)

func promising(level: Int) -> Bool {
    for i in 0..<level {
        if cols[i] == cols[level] {
            return false
        } else if level-i == abs(cols[level]-cols[i]) {
            return false
        }
    }
    return true
}

func queens(level: Int) -> Bool {
    if !promising(level: level) {
        return false
    }
    else if level == N-1 {
        print("cols:\(cols)")
        return true
    }
    
    for i in 0..<N {
        cols[level + 1] = i
        if queens(level: level+1) { return true }
    }

    return false
}

queens(level: 0)



