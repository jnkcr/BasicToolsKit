//
//  NumberExtensionsTests.swift
//  
//
//  Created by Jan Kučera on 23.05.2021.
//

import XCTest
@testable import BasicToolsKit


class NumberExtensionsTests: XCTestCase {
    
    // Double
    let number01: Double = 1.151515
    let number02: Double = 2.7
    let number03: Double = 3
    let number04: Double = 3.0000
    let number05: Double = 0
    
    // Float
    let number11: Float = 1.151515
    let number12: Float = 2.7
    let number13: Float = 3
    let number14: Float = 3.0000
    let number15: Double = 0
    
    
    func testFormatingDouble() {
        
        // Using czech locale code to be able to predict result
        let n01 = number01.toString(localeID: "cs")
        let n02 = number02.toString(localeID: "cs")
        let n03 = number03.toString(localeID: "cs")
        let n04 = number04.toString(localeID: "cs")
        let n05 = number05.toString(localeID: "cs")
        
        XCTAssertEqual(n01, "1,15")
        XCTAssertEqual(n02, "2,7")
        XCTAssertEqual(n03, "3")
        XCTAssertEqual(n04, "3")
        XCTAssertEqual(n05, "0")
        
    }
    
    func testFormatingFloat() {
        
        // Using czech locale code to be able to predict result
        let n11 = number11.toString(localeID: "cs")
        let n12 = number12.toString(localeID: "cs")
        let n13 = number13.toString(localeID: "cs")
        let n14 = number14.toString(localeID: "cs")
        let n15 = number15.toString(localeID: "cs")
        
        XCTAssertEqual(n11, "1,15")
        XCTAssertEqual(n12, "2,7")
        XCTAssertEqual(n13, "3")
        XCTAssertEqual(n14, "3")
        XCTAssertEqual(n15, "0")
        
    }
    
    
}
