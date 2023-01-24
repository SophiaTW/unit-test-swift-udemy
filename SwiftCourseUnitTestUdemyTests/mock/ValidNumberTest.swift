//
//  ValidNumberTest.swift
//  SwiftCourseUnitTestUdemyTests
//
//  Created by Sophia Paulette Muñoz Pailamilla on 24-01-23.
//

import Foundation
import XCTest

@testable import SwiftCourseUnitTestUdemy

class ValidNumberTest: XCTestCase {
    
    var sut: ValidNumber?
    
    override func setUp() {
        sut = ValidNumber()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testCheack(){
        XCTAssertEqual(true, sut?.check(number: 4))
    }
    
    func testCheackNegative(){
        XCTAssertEqual(false, sut?.check(number: -4))
    }
    
    func testCheackMoreThan9(){
        XCTAssertEqual(false, sut?.check(number: 10))
    }
}

