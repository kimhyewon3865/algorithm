//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var isLogin: Bool
var isVote: Bool

var formatter = DateFormatter()
formatter.dateFormat = "yyyy.MM.dd"

let voteStartTime = NSCalendar.current.date(bySettingHour: 11, minute: 38, second: 0, of: Date())
let voteEndTime = NSCalendar.current.date(bySettingHour: 18, minute: 00, second: 0, of: Date())
let anounceStartTime = NSCalendar.current.date(bySettingHour: 18, minute: 45, second: 0, of: Date())
var anounceEndTime = NSCalendar.current.date(byAdding: .day, value: 1, to: Date())
anounceEndTime = NSCalendar.current.date(bySettingHour: 23, minute: 59, second: 59, of: anounceEndTime!)

let now = Date()

isLogin = true
isVote = false

weak var calendarOpenButton: UIButton!


if now > voteStartTime! && now < voteEndTime! { //투표중
    if isLogin {
        if isVote {
             //화면
            calendarOpenButton.isHidden = true
            //기능
        } else {
            //화면
            //기능
        }
        
    } else {
        //화면
        //기능
    }
} else if now > voteEndTime! && now < anounceStartTime! { //결과발표 대기중
    if isLogin {
        if isVote {
            
        } else {
            
        }
        
    } else {
        
    }

} else if now > anounceStartTime! && now < anounceEndTime! { //결과 발표중
    if isLogin {
        if isVote {
            
        } else {
            
        }
        
    } else {
        
    }

} else if now > anounceStartTime! && now < voteStartTime! { //투표 대기중
    
} else {
    print("error")
}
