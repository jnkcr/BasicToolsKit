//
//  DateExtensionsTests.swift
//  
//
//  Created by Jan Kučera on 13.05.2021.
//

import XCTest
@testable import BasicToolsKit

class DateExtensionsTests: XCTestCase {
    
    let date: Date = Date(timeIntervalSince1970: 0)
    let format1: String = "dd MM yyyy"
    let format2: String = "HH mm ss"

    
    func testConvertingDateToString() {
        
        let s1: String = date.toString(as: format1)
        let s2: String = date.toString(as: format2)
        
        XCTAssertEqual(s1, "01 01 1970")
        XCTAssertEqual(s2, "01 00 00")
        
    }
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
