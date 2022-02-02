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
    let double01: Double = 1.151515
    let double02: Double = 2.7
    let double03: Double = 3
    let double04: Double = 3.0000
    let double05: Double = 0
    
    let double11: Double = -1.151515
    let double12: Double = -2.7
    let double13: Double = -3
    
    // Float
    let float01: Float = 1.151515
    let float02: Float = 2.7
    let float03: Float = 3
    let float04: Float = 3.0000
    let float05: Float = 0
    
    let float11: Float = -1.151515
    let float12: Float = -2.7
    let float13: Float = -3
    
    func testBasicDoubleFormating() {
        
        // USING CZECH LOCALE code to be able to predict result
        
        // Set-up for testing with default maximumDigitalFraction
        let d01 = double01.toString(localeID: "cs")
        let d02 = double02.toString(localeID: "cs")
        let d03 = double03.toString(localeID: "cs")
        let d04 = double04.toString(localeID: "cs")
        let d05 = double05.toString(localeID: "cs")
        
        let d11 = double11.toString(localeID: "cs")
        let d12 = double12.toString(localeID: "cs")
        let d13 = double13.toString(localeID: "cs")
        
        // Tests with default maximumDigitalFraction = 2
        XCTAssertEqual(d01, "1,15")
        XCTAssertEqual(d02, "2,7")
        XCTAssertEqual(d03, "3")
        XCTAssertEqual(d04, "3")
        XCTAssertEqual(d05, "0")
        
        XCTAssertEqual(d11, "-1,15")
        XCTAssertEqual(d12, "-2,7")
        XCTAssertEqual(d13, "-3")
        
        // Set-up for testing with maximumDigitalFraction = 0
        let d001 = double01.toString(fractionDigits: 0, localeID: "cs")
        let d002 = double02.toString(fractionDigits: 0, localeID: "cs")
        let d003 = double03.toString(fractionDigits: 0, localeID: "cs")
        let d004 = double04.toString(fractionDigits: 0, localeID: "cs")
        let d005 = double05.toString(fractionDigits: 0, localeID: "cs")
        
        let d011 = double11.toString(fractionDigits: 0, localeID: "cs")
        let d012 = double12.toString(fractionDigits: 0, localeID: "cs")
        let d013 = double13.toString(fractionDigits: 0, localeID: "cs")
        
        // Tests with maximumDigitalFraction = 0
        XCTAssertEqual(d001, "1")
        XCTAssertEqual(d002, "3")
        XCTAssertEqual(d003, "3")
        XCTAssertEqual(d004, "3")
        XCTAssertEqual(d005, "0")
        
        XCTAssertEqual(d011, "-1")
        XCTAssertEqual(d012, "-3")
        XCTAssertEqual(d013, "-3")
        
    }
    
    func testBasicFloatFormating() {
        
        // USING CZECH LOCALE code to be able to predict result
        
        // Set-up for testing with default maximumDigitalFraction
        let f01 = float01.toString(localeID: "cs")
        let f02 = float02.toString(localeID: "cs")
        let f03 = float03.toString(localeID: "cs")
        let f04 = float04.toString(localeID: "cs")
        let f05 = float05.toString(localeID: "cs")
        
        let f11 = float11.toString(localeID: "cs")
        let f12 = float12.toString(localeID: "cs")
        let f13 = float13.toString(localeID: "cs")
        
        // Test with default maximumDigitalFraction = 2
        XCTAssertEqual(f01, "1,15")
        XCTAssertEqual(f02, "2,7")
        XCTAssertEqual(f03, "3")
        XCTAssertEqual(f04, "3")
        XCTAssertEqual(f05, "0")
        
        XCTAssertEqual(f11, "-1,15")
        XCTAssertEqual(f12, "-2,7")
        XCTAssertEqual(f13, "-3")
        
        // Set-up for testing with maximumDigitalFraction = 0
        let f001 = float01.toString(fractionDigits: 0, localeID: "cs")
        let f002 = float02.toString(fractionDigits: 0, localeID: "cs")
        let f003 = float03.toString(fractionDigits: 0, localeID: "cs")
        let f004 = float04.toString(fractionDigits: 0, localeID: "cs")
        let f005 = float05.toString(fractionDigits: 0, localeID: "cs")
        
        let f011 = float11.toString(fractionDigits: 0, localeID: "cs")
        let f012 = float12.toString(fractionDigits: 0, localeID: "cs")
        let f013 = float13.toString(fractionDigits: 0, localeID: "cs")
        
        // Tests with maximumDigitalFraction = 0
        XCTAssertEqual(f001, "1")
        XCTAssertEqual(f002, "3")
        XCTAssertEqual(f003, "3")
        XCTAssertEqual(f004, "3")
        XCTAssertEqual(f005, "0")
        
        XCTAssertEqual(f011, "-1")
        XCTAssertEqual(f012, "-3")
        XCTAssertEqual(f013, "-3")
        
    }
    
//    func testCurrencyDoubleFormatting() {
//
//        // USING CZECH LOCALE code to be able to predict result
//
//        // Set-up for testing with default maximumDigitalFraction
//        let d01 = double01.toStringAsCurrency(localeID: "us")
//        let d02 = double02.toStringAsCurrency(localeID: "cs")
//        let d03 = double03.toStringAsCurrency(localeID: "cs")
//        let d04 = double04.toStringAsCurrency(localeID: "cs")
//        let d05 = double05.toStringAsCurrency(localeID: "cs")
//
//        // Test with default maximumDigitalFraction = 2
//        XCTAssertEqual(d01, "CZK 1.15")
//        XCTAssertEqual(d02, "2,70 Kč")
//        XCTAssertEqual(d03, "3,00 Kč")
//        XCTAssertEqual(d04, "3,00 Kč")
//        XCTAssertEqual(d05, "0,00 Kč")
//
//    }
    
//    func testCurrencyFloatFormatting() {
//
//        // USING CZECH LOCALE code to be able to predict result
//
//        // Set-up for testing with default maximumDigitalFraction
//        let f01 = float01.toStringAsCurrency(localeID: "cs")
//        let f02 = float02.toStringAsCurrency(localeID: "cs")
//        let f03 = float03.toStringAsCurrency(localeID: "cs")
//        let f04 = float04.toStringAsCurrency(localeID: "cs")
//        let f05 = float05.toStringAsCurrency(localeID: "cs")
//
//        // Test with default maximumDigitalFraction = 2
//        XCTAssertEqual(f01, "1,15 Kč")
//        XCTAssertEqual(f02, "2,70 Kč")
//        XCTAssertEqual(f03, "3,00 Kč")
//        XCTAssertEqual(f04, "3,00 Kč")
//        XCTAssertEqual(f05, "0,00 Kč")
//
//    }
    
    
}
