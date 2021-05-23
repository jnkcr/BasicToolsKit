//
//  NumberExtensionsTests.swift
//  
//
//  Created by Jan Kučera on 23.05.2021.
//

import XCTest
@testable import BasicToolsKit


class NumberExtensionsTests: XCTestCase {
    
    let number1: Double = 1.151515
    let number2: Double = 2.7
    let number3: Double = 3
    let number4: Double = 0
    
    
    func testFormatingDouble() {
        
        // Using czech locale code to be able to predict result
        let n1 = number1.toString(localeID: "cs")
        let n2 = number2.toString(localeID: "cs")
        let n3 = number3.toString(localeID: "cs")
        let n4 = number4.toString(localeID: "cs")
        
        XCTAssertEqual(n1, "1,15")
        XCTAssertEqual(n2, "2,7")
        XCTAssertEqual(n3, "3")
        XCTAssertEqual(n4, "0")
        
    }
    
    
}
