////: Playground - noun: a place where people can play
//
///*
// 앞에서부터 읽을 때나 뒤에서부터 읽을 때나 모양이 같은 수를 대칭수(palindrome)라고 부릅니다.
// 
// 두 자리 수를 곱해 만들 수 있는 대칭수 중 가장 큰 수는 9009 (= 91 × 99) 입니다.
// 
// 세 자리 수를 곱해 만들 수 있는 가장 큰 대칭수는 얼마입니까?
// */
//import UIKit
//
//func halfPrefix(n: String) -> String {
//    let index = n.index(n.startIndex, offsetBy: n.characters.count / 2)
//    return n.substring(to: index)
//}
//
//func halfSufix(n: String) -> String {
//    var offset = 0
//    if n.characters.count % 2 == 1 {
//        offset = n.characters.count / 2 + 1
//    } else {
//        offset = n.characters.count / 2
//    }
//    let index = n.index(n.startIndex, offsetBy: offset)
//    return n.substring(from: index)
//}
//
//func exceptFirst(n: String) -> String {
//    let index = n.index(n.startIndex, offsetBy: 1)
//    return n.substring(from: index)
//}
//
//func firstCharactor(n: String) -> String {
//    let index = n.index(n.startIndex, offsetBy: 1)
//    return n.substring(to: index)
//}
//
//var tmp = ""
//func printBack(str: String) {
//    if str.isEmpty {
//        return
//    } else {
//        printBack(str: exceptFirst(n: str))
//        tmp = tmp + firstCharactor(n: str)
//    }
//}
//
//func isSame(su: String, pre: String) -> Bool {
//    if pre == tmp {
//        return true
//    } else {
//        return false
//    }
//}
//
//func isPalindrome(n: Int) -> Bool {
//    let su = halfSufix(n: String(n))
//    let pre = halfPrefix(n: String(n))
//    
//    printBack(str: su)
//    
//    return isSame(su: tmp, pre: pre)
//}
//
//
//func mult(i: Int, j: Int) {
//    if isPalindrome(n: i * j) {
//        print("i:\(i)>>j:\(j)>>tmp\(tmp)")
//        tmp = ""
//
//        return
//    }
//    else if i <= 0 && j <= 0 {
//        print("i:\(i)>>j:\(j)")
//        tmp = ""
//
//        return
//    } else {
//        if j > 10 {
//            tmp = ""
//            print("j>0>>i:\(i)>>j:\(j)>>i*j:\(i*j)>>tmp\(tmp)")
//            mult(i: i, j: j - 1)
//
//        } else {
//            tmp = ""
//
//            print("j<0>>i:\(i)>>j:\(j)>>i*j:\(i*j)>>tmp\(tmp)")
//            mult(i: i - 1, j: i - 1)
//
//        }
//    }
//}
//
//
//mult(i: 99, j: 99)
//
////mult(i: 999, j: 999)
//
//
////999 * 999
//






