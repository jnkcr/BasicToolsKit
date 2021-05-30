//
//  NumberExtensions.swift
//  
//
//  Created by Jan Kučera on 23.05.2021.
//

import Foundation


// MARK: - Double

extension Double {
    
    /// Conversion of Double type to localized and formatted String
    /// - Parameters:
    ///   - localeID: String locale id
    ///   - fractionDigits: Number of maximum fraction digits
    /// - Returns: Localized and formatted String
    public func toString(localeID: String? = nil, fractionDigits: Int = 2) -> String {
        
        // Setup of formatter
        let formatter = NumberFormatter()
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = fractionDigits
        
        // Check for locale id
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        // Convert value
        let number = NSNumber(value: self)
        let formattedValue = formatter.string(from: number)!
        
        // Return formatted value
        return formattedValue
    }
    
}


// MARK: - Float

extension Float {
    
    /// Conversion of Float type to localized and formatted String
    /// - Parameters:
    ///   - localeID: String locale id
    ///   - fractionDigits: Number of maximum fraction digits
    /// - Returns: Localized and formatted String
    public func toString(localeID: String? = nil, fractionDigits: Int = 2) -> String {
        
        // Setup of formatter
        let formatter = NumberFormatter()
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = fractionDigits
        
        // Check for locale id
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        // Convert value
        let number = NSNumber(value: self)
        let formattedValue = formatter.string(from: number)!
        
        // Return formatted value
        return formattedValue
    }
    
}
