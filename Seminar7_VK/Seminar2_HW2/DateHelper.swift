//
//  DateHelper.swift
//  Seminar2_HW2
//
//  Created by Elena on 16.03.2024.
//

import Foundation

final class DateHelper {
    static func getDateString(date: Date?) -> String {
        guard let date = date else { return "" }

        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        dateFormatter.dateStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_RU")

        return dateFormatter.string(from: date)
    }
}
