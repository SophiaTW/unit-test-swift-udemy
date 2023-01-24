//
//  Add.swift
//  SwiftCourseUnitTestUdemy
//
//  Created by Sophia Paulette Muñoz Pailamilla on 24-01-23.
//

import Foundation

class Add{
    
    var validNumber: ValidNumber
    
    init(validNumber: ValidNumber) {
        self.validNumber = validNumber
    }
    
    func add(a : Int, b : Int) -> Int {
        if(validNumber.check(number: a) && validNumber.check(number: b)){
            return a + b
        }
        return 0
    }
    
}
