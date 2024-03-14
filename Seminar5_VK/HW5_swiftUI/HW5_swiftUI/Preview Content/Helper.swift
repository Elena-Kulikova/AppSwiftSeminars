//
//  Helper.swift
//  HW5_swiftUI
//
//  Created by Elena on 14.03.2024.
//

import Foundation

final class Helper {
    static func getDate (date: Double) -> String {
        
        let currentDate = Date(timeIntervalSince1970: date)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MM YYYY"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        return dateFormatter.string(from: currentDate)
    }
}
