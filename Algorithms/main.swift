//
//  main.swift
//  Algorithms
//
//  Created by Neil on 15/12/15.
//  Copyright © 2015 SOIN. All rights reserved.
//

import Foundation

//Fibonnaci
let number = 12
var fibonacciResult:Int = Fibonacci.fibonacci(number)
print("Fibonnaci of \(number) is  \(fibonacciResult)")

//Finder iterative
let numberToFind = 5
var findResult:Int = Finder.findIndexInOrderedArray([3,4,7], value: numberToFind)
print("Index of \(numberToFind) is  \(findResult)")


//Finder Recursive

findResult = Finder.findIndexInOrderedArrayRecursive([3,4,7], value: numberToFind)
print("Recursive - Index of \(numberToFind) is  \(findResult)")
