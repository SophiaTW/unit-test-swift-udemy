//
//  StringManagerTest.swift
//  SwiftCourseUnitTestUdemyTests
//
//  Created by Sophia Paulette Muñoz Pailamilla on 24-01-23.
//

import Foundation
import XCTest

@testable import SwiftCourseUnitTestUdemy

class StringManagerTest: XCTestCase {
    
    var sut: StringManager?
    
    override func setUp() {
        sut = StringManager()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testToUpperCased(){
        XCTAssertEqual("SOPHIA TEST", sut?.toUpperCased(massage: "sophia test"))
    }
    
    func testToLowerCased(){
        XCTAssertEqual("sophia test", sut?.toLowerCased(massage: "SOPHIA TEST"))
    }
}
