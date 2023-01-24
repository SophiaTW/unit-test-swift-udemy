//
//  TemperatureTest.swift
//  SwiftCourseUnitTestUdemyTests
//
//  Created by Sophia Paulette Muñoz Pailamilla on 24-01-23.
//

import Foundation
import XCTest

@testable import SwiftCourseUnitTestUdemy

class TemperatureTest: XCTestCase {
    
    var sut: Temperature?
    
    override func setUp() {
        sut = Temperature()
    }
    
    override func tearDown() {
        sut = nil
    }

    func testToFahrenheit(){
        let expectedResult: Double = -9.4
        let result = sut?.toFahrenheit(degree: -23)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.001)
    }
    
    func testToDegrees(){
        let expectedResult: Double = 25.5555
        let result = sut?.toDegrees(fahrenheit: 78)
        XCTAssertEqual(expectedResult, result!, accuracy: 0.001)
    }
}
