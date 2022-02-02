//
//  NumberExtensions.swift
//  
//
//  Created by Jan Kučera on 23.05.2021.
//

import Foundation

extension BinaryFloatingPoint {
    
    /// Conversion of FloatingPoint type to localized and formatted String
    /// - Parameters:
    ///   - fractionDigits: Maximum number of fraction digits
    ///   - localeID: String locale id
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
        
        var number: NSNumber!
        
        // Convert value to right format
        switch self {
        case is Double:
            number = NSNumber(value: self as! Double)
        case is Float:
            number = NSNumber(value: self as! Float)
        case is Float16:
            number = NSNumber(value: self as! Float)
        default:
            fatalError("Unable to find correct type")
        }

        // Return formatted value
        return formatter.string(from: number)!
    }
    
    /// Conversion of FloatingPoint type to type String that is formatted and localized as currency
    /// - Parameters:
    ///   - fractionDigits: Maximum number of fraction digits
    ///   - currencyCode: String of currency id code
    ///   - localeID: String of locale id code
    /// - Returns: String that is formatted and localized as currency
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
        
        var number: NSNumber!
        
        // Convert value to right format
        switch self {
        case is Double:
            number = NSNumber(value: self as! Double)
        case is Float:
            number = NSNumber(value: self as! Float)
        case is Float16:
            number = NSNumber(value: self as! Float)
        default:
            fatalError("Unable to find correct type")
        }
        
        // Return formatted value
        return formatter.string(from: number)!
    }
    
}
