//
//  UITestExampleTests.swift
//  UITestExampleTests
//
//  Created by Vineeth Krishnan V on 14/01/25.
//

import XCTest
@testable import UITestExample

final class UITestExampleTests: XCTestCase {

   
    func testEvenNumberIsTrue() {
        XCTAssertTrue(isEven(number: 2))
    }
    
    func testEvenNumberIsFalse() {
        XCTAssertFalse(isEven(number: 1))
    }
    
    func testPerformanceFibanacciRecursive() {
        self.measure {
           _ = fibonacciRecursive(1)
        }
    }
    

}
