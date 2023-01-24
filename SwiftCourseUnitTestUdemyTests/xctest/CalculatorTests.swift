//
//  CalculatorTests.swift
//  SwiftCourseUnitTestUdemyTests
//
//  Created by Sophia Paulette Muñoz Pailamilla on 23-01-23.
//

import Foundation
import XCTest

@testable import SwiftCourseUnitTestUdemy

class CalculatorTests: XCTestCase {
    
    var sut: Calculator!
    
    override func setUp() {
        print("XXXXX SETUP")
        sut = Calculator()
    }
    
    override func tearDown() {
        print("XXXXX TEAR DOWN")
        sut = nil
    }
    
    func testCalculatorNotNil(){
        print("XXXXX TEST")
        //sut = Calculator()
        XCTAssertNotNil(sut, "SUT debería ser not nil en este punto")
        //XCTAssertNil(sut, "SUT debería ser nil en este punto")
    }
    
    func testAddAssert(){
        print("XXXXX testAddAssert")
        //1. Arrage
        let resultadoEsperado = 30
        var resultadoActual: Int
        //2. Act
        resultadoActual = sut.add(n1: 10, n2: 20)
        //3. Assert
        XCTAssertEqual(resultadoEsperado, resultadoActual)
    }
    
    func testAddBDD(){
        print("XXXXX testAddBDD")
        //1. GIVEN
        let resultadoEsperado = 30
        var resultadoActual: Int
        //2. WHEN
        resultadoActual = sut.add(n1: 10, n2: 20)
        //3. THEN
        XCTAssertEqual(resultadoEsperado, resultadoActual)
    }
    
    func testAdd(){
        print("XXXXX testAdd")
        XCTAssertEqual(30, sut.add(n1: 10, n2: 20))
    }
    
    func testAssertTypes(){
        print("XXXXX testAssertTypes")
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(2 == 3)
        XCTAssertEqual("alberto", "alberto")
        XCTAssertGreaterThan(11, 10, "necsito que sea mayor")
    }
    
    func testSubtract(){
        print("XXXXX testAssertTypes")
        XCTAssertEqual(10, sut.subtract(n1: 20, n2: 10))
    }
    
    func testDivide(){
        print("XXXXX testDivide")
        XCTAssertEqual(2, sut.divide(n1: 6, n2: 3))
    }
    
    func testDivideZero(){
        print("XXXXX testDivideZero")
        XCTAssertEqual(2, try sut.divideZero(n1: 6, n2: 3))
        XCTAssertThrowsError(try sut.divideZero(n1: 4, n2: 0))
    }
    
    //funcion desabilitada momentaneamente a mode de ejemplo
    func testDisable(){
        print("XXXXX testDisable")
        XCTAssertThrowsError(try sut.divideZero(n1: 4, n2: 0))
    }
    
    func testPerformanceExample(){
        self.measure {
            sut.divide(n1: 4, n2: 2)
        }
    }
    
    func testArraySquared(){
        //Given
        var numbers = [Int]()
        for n in 1...4{
            numbers.append(n)
        }
        //When
        let numbersSquared = sut.arraySquared(numberArray: numbers) 
        //Then
        var expectedResult = [Int]()
        expectedResult.append(1)
        expectedResult.append(4)
        expectedResult.append(9)
        expectedResult.append(16)
        XCTAssertEqual(expectedResult, numbersSquared)
    }
    
    func testArraySquared2(){
        //Given
        var numbers = [Int]()
        for n in 1...4{
            numbers.append(n)
        }
        //When
        let numbersSquared = sut.arraySquared2(numberArray: numbers)
        //Then
        var expectedResult = [Int]()
        expectedResult.append(1)
        expectedResult.append(4)
        expectedResult.append(9)
        expectedResult.append(16)
        XCTAssertEqual(expectedResult, numbersSquared)
    }
    
    func testArrraySquaredMeasure(){
        var numbers = [Int]()
        for n in 1...5000000{
            numbers.append(n)
        }
        self.measure {
            sut.arraySquared(numberArray: numbers)
        }
    }
    
    func testArraySquaredMeasure2(){
        var numbers = [Int]()
        for n in 1...5000000{
            numbers.append(n)
        }
        self.measure {
            sut.arraySquared(numberArray: numbers)
        }
    }
}

//GIVEN WHEN THEN
//TEAR DOWN: DESTRUIR LOS OBJETOS DESPUES DE LA PRUEBA, LIBERAR RECURSOS QUE SE INICIALIZARON EN SETUP O DESPUES
