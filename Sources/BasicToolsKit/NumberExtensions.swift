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
    public func toString(fractionDigits: Int = 2, localeID: String? = nil) -> String {
        
        // Setup of formatter
        let formatter = NumberFormatter()
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = fractionDigits
        
        // Check for locale id
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        // Convert value to right format
        let number = NSNumber(value: self)
        
        // Return formatted value
        return formatter.string(from: number)!
    }
    
    
    public func toStringAsCurrency(fractionDigits: Int = 2, currencyCode: String = "czk", localeID: String? = nil) -> String {
        
        // Setup of formatter
        let formatter = NumberFormatter()
        formatter.numberStyle           = .currency
        formatter.currencyCode          = currencyCode
        formatter.maximumFractionDigits = fractionDigits
        
        // Check for locale id
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        // Convert value to right format
        let number = NSNumber(value: self)
        
        // Return formatted value
        return formatter.string(from: number)!
    }
    
}


// MARK: - Float

extension Float {
    
    /// Conversion of Float type to localized and formatted String
    /// - Parameters:
    ///   - localeID: String locale id
    ///   - fractionDigits: Number of maximum fraction digits
    /// - Returns: Localized and formatted String
    public func toString(fractionDigits: Int = 2, localeID: String? = nil) -> String {
        
        // Setup of formatter
        let formatter = NumberFormatter()
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = fractionDigits
        
        // Check for locale id
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        // Convert value to right format
        let number = NSNumber(value: self)
        
        // Return formatted value
        return formatter.string(from: number)!
    }
    
    
    public func toStringAsCurrency(fractionDigits: Int = 2, currencyCode: String = "czk", localeID: String? = nil) -> String {
        
        // Setup of formatter
        let formatter = NumberFormatter()
        formatter.numberStyle           = .currency
        formatter.currencyCode          = currencyCode
        formatter.maximumFractionDigits = fractionDigits
        
        // Check for locale id
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        // Convert value to right format
        let number = NSNumber(value: self)
        
        // Return formatted value
        return formatter.string(from: number)!
    }
    
}
