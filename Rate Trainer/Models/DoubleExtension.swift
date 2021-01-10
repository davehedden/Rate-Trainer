//
//  DoubleExtension.swift
//  Rate Trainer
//
//  Created by Dave Hedden on 1/8/21.
//

import Foundation

extension Double {
    
    func round(toPlaces: Int) -> Double {
        /// This function rounds a TimeInterval value to the hundredths value (e.g. 34.9185173 becomes 34.92)

        let decimalNum = pow(10.0, Double(toPlaces))
        return (self * decimalNum).rounded(.toNearestOrAwayFromZero) / decimalNum
    }
    
    func truncate(toPlaces: Int) -> TimeInterval {
        /// This function truncates a TimeInterval value to the hundredths value (e.g. 34.9185173 becomes 34.91)
        
        let decimalNum = pow(10.0, Double(toPlaces))
        return (self * decimalNum).rounded(.towardZero) / decimalNum
    }
    
    func display() -> String {
        return String(format: "%.2f", self)
    }
}
