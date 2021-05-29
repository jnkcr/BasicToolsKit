//
//  NumberExtensions.swift
//  
//
//  Created by Jan Kučera on 23.05.2021.
//

import Foundation


extension Double {
    
    public func toString(localeID: String? = nil, fractionDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = fractionDigits
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        let number = NSNumber(value: self)
        let formattedValue = formatter.string(from: number)!
        
        return formattedValue
    }
    
}


extension Float {
    
    public func toString(localeID: String? = nil, fractionDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = fractionDigits
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        let number = NSNumber(value: self)
        let formattedValue = formatter.string(from: number)!
        
        return formattedValue
    }
    
}
