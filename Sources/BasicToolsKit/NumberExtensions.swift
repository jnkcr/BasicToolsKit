//
//  NumberExtensions.swift
//  
//
//  Created by Jan Kučera on 23.05.2021.
//

import Foundation


extension Double {
    
    public func toString(localeID: String? = nil) -> String {
        let formatter = NumberFormatter()
        
        formatter.numberStyle           = .decimal
        formatter.maximumFractionDigits = 2
        if let localeString = localeID {
            formatter.locale = Locale(identifier: localeString)
        }
        
        let number = NSNumber(value: self)
        let formattedValue = formatter.string(from: number)!
        
        return formattedValue
    }
    
}
