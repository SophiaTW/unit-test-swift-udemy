//
//  ValidNumber.swift
//  SwiftCourseUnitTestUdemy
//
//  Created by Sophia Paulette Muñoz Pailamilla on 24-01-23.
//

import Foundation

class ValidNumber {
    
    func check(number: Int) -> Bool {
        if(number >= 0 && number < 10){
            return true
        } else {
            return false
        }
    }
    
}
