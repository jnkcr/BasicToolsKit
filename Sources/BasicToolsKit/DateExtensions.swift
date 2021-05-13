//
//  DateExtensions.swift
//  
//
//  Created by Jan Kučera on 13.05.2021.
//

import Foundation


extension Date {
    
    /// Converts date to String with given format
    /// - Parameter format: format of date
    /// - Returns: formatted date as string type
    public func toString(as format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
}
