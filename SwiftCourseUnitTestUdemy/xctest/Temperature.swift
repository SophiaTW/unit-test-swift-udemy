//
//  Temperature.swift
//  SwiftCourseUnitTestUdemy
//
//  Created by Sophia Paulette Muñoz Pailamilla on 24-01-23.
//

import Foundation

class Temperature{
    
    func toFahrenheit(degree: Double) -> Double{
        return degree * 9 / 5 + 32
    }
    
    func toDegrees(fahrenheit: Double) -> Double{
        return (fahrenheit - 32) * 5 / 9
    }
}
