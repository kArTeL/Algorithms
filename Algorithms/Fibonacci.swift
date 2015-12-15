//
//  Fibonnaci.swift
//  Algorithms
//
//  Created by Neil on 15/12/15.
//  Copyright © 2015 SOIN. All rights reserved.
//

import Foundation

/// Fibonacci is defined as the sum of fibonnaci(i-1) + fibonnaci(i-2)
public class Fibonacci
{
    public
    
    /**
    Fibonnaci method iterative, this method call the recursive method
    
    - parameter num: fibonacci index
    
    - returns: fibonacci of the index
    */
    static func fibonacci(num:Int)->Int
    {
        return fibonacciRe(num)
    }
    
    
    /**
     Fibonacci method recursive
     
     - parameter num: fibonnaci raw
     
     - returns: fibonacci result
     */
    static func fibonacciRe( num:Int)->Int
    {
        //fibonacci(0) = 0 and fibonacci(<0) = 0
        if (num == 0 || num < 0)
        {
            return 0
        }
        //fibonacci(1), fibonacci(2) = 1
        if (num == 1 || num == 2)
        {
            return 1
        }
        
        return (fibonacciRe(num-1)+fibonacciRe(num-2))
        
    }
}


