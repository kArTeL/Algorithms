//
//  Finder.swift
//  Algorithms
//
//  Created by Neil on 15/12/15.
//  Copyright © 2015 SOIN. All rights reserved.
//

import Foundation

/// Finder class to execute find operations
public class Finder
{
    
    /**
     Find the index of a @value, if @values is not in array, the method should return the position where the @value should to be in.
     This implementation is iterative and has O(n) order.
     
     - parameter array: array
     - parameter value: value to find
     */
    static func findIndexInOrderedArray(array:[Int], value:Int) ->Int
    {
        var i = 0
        
        if (array.count != 0)
        {
            for (i = 0; i < array.count-1; i++)
            {
                if (array[i] == value)
                {
                    return i
                }
                
                if ((array[i] < value)  && (value < array[i+1]))
                {
                    return i+1
                }
            }
        }
        
        return i
    }
    
    /**
     Recursive implementation to find a value in Array.
     
     - parameter array: array
     - parameter value: value to find
     
     - returns: index of value if is in array, or index where should be in
     */
    static func findIndexInOrderedArrayRecursive(array:[Int], value:Int) ->Int
    {
        return findIndexInOrderedArrayRe(array, startIndex: 0, endIndex: array.count-1, valueToFind:value)
    }
    
    static func findIndexInOrderedArrayRe(array:[Int], startIndex:Int, endIndex:Int, valueToFind:Int) ->Int
    {
        let med = (startIndex+endIndex)/2
        if ((valueToFind==array[med]) || (startIndex == endIndex))
        {
            return med
        }
        else
        {
            if (valueToFind < med ){
                return findIndexInOrderedArrayRe(array,startIndex:startIndex, endIndex:med-1, valueToFind:valueToFind)
            }
            else
            {
                return findIndexInOrderedArrayRe(array,startIndex:med+1, endIndex:endIndex, valueToFind:valueToFind)
            }
            
        }
        
    }
}