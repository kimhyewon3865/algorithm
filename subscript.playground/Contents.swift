//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
protocol Initable {
    init()
}
extension Int:Initable {}
extension String:Initable {}

struct Example<T: Initable> {
    var grid: [T]
    
    init() {
        grid = Array(repeating: T(), count: 4)
    }
    
    func indexIsValidForRow(index: Int) -> Bool {
        return index >= 0 && index < 4
    }
    
    subscript(index: Int) -> T {
        get {
            assert(indexIsValidForRow(index: index),"Index out of range")
            return grid[index]
        }
        set {
            assert(indexIsValidForRow(index: index),"Index out of range")
            grid[index] = newValue
        }
    }
}

var example = Example<String>()

example[0] = "a"
example[1] = "b"
example[2] = "c"
example[3] = "d"

print(example[0])
print(example[1])
var IntExample = Example<Int>()
IntExample[0] = 1
print(IntExample[0])

