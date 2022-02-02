//
//  StringExtensions.swift
//  
//
//  Created by Jan Kučera on 13.05.2021.
//

import Foundation

extension String {
    
    /// Removes blank characters at beggining and end of current String
    /// - Returns: Returns clean String
    public func removeFirstAndLastBlankCharacters() -> String {
        var string = self
        while string.hasPrefix(" ") || string.hasSuffix(" ") {
            if string.hasPrefix(" ") {
                string.removeFirst()
            } else {
                string.removeLast()
            }
        }
        return string
    }
    
}
