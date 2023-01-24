//
//  Calculator.swift
//  SwiftCourseUnitTestUdemy
//
//  Created by Sophia Paulette Muñoz Pailamilla on 23-01-23.
//

import Foundation

class Calculator {
    func add(n1 : Int, n2 : Int) -> Int {
        return n1 + n2
    }
    
    func subtract(n1 : Int, n2 : Int) -> Int {
        return n1 - n2
    }
    
    func divide(n1 : Int, n2 : Int) -> Int {
        return n1 / n2
    }
    
    func divideZero(n1 : Int, n2 : Int) throws -> Int {
        if(n2 == 0){
            throw SomeError.ZeroError
        }
        return n1 / n2
    }
    enum SomeError: Error{
        case ZeroError
    }
    
    func arraySquared(numberArray: [Int]) -> [Int]{
        var result = [Int]()
        for number in numberArray{
            result.append(number * number)
        }
        return result
    }
    
    func arraySquared2(numberArray:[Int]) -> [Int]{
        return numberArray.map{numberArray in numberArray * numberArray}
    }
    
}
