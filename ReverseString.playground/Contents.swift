//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func reverseString(myString: String) -> String {
    // Converting string to aray of chars
    var charArr = Array(myString.characters)
    
    var leftIndex = 0  // 0
    var rightIndex = charArr.count - 1  // 16
    
    while leftIndex < rightIndex {
        
        let leftObject = charArr[leftIndex]
        let rightObject = charArr[rightIndex]
        
        charArr.remove(at: leftIndex)
        charArr.insert(rightObject, at: leftIndex)
        
        charArr.remove(at: rightIndex)
        charArr.insert(leftObject, at: rightIndex)
        
        leftIndex += 1
        rightIndex -= 1
    }
    return String(charArr)
}

print(reverseString(myString: str)) // "dnuorgyalp ,olleH\n"