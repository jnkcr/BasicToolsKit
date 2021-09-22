//
//  StringExtensionsTests.swift
//
//
//  Created by Jan Kučera on 13.05.2021.
//

import XCTest
@testable import BasicToolsKit

final class StringExtensionsTests: XCTestCase {
    
    let string1: String = "Hello, world!   "    // .count = 16
    let string2: String = "   Hello, world!"    // .count = 16
    let string3: String = "  Hello, world!    " // .count = 19
    let string4: String = "     "               // .count = 5
    
    // Final .count after adjusments should be 13
    
    func testCharacterRemoval() {
        
        XCTAssertEqual(string1.removeFirstAndLastBlankCharacters().count, 13)
        XCTAssertEqual(string3.removeFirstAndLastBlankCharacters().count, 13)
        XCTAssertEqual(string3.removeFirstAndLastBlankCharacters().count, 13)
        XCTAssertTrue(string4.removeFirstAndLastBlankCharacters().isEmpty)
        
    }
    
}
