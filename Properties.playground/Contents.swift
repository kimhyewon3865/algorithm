//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Channel {
    static let level = 10
    static var maxInputLevel = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > Channel.level {
                currentLevel = Channel.level
            }
            if currentLevel > Channel.maxInputLevel {
                Channel.maxInputLevel = currentLevel
            }
        }
    }
}

var channel = Channel()
channel.currentLevel = 7
print(channel.currentLevel)
channel.currentLevel = 12
print(channel.currentLevel)

