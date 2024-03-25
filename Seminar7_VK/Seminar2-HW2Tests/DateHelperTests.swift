//
//  Seminar2_HW2Tests.swift
//  Seminar2_HW2Tests
//
//  Created by Elena on 22.03.2024.
//

import XCTest
@testable import Seminar2_HW2

final class DateHelperTests: XCTestCase {
    private var dateHelper: DateHelper!
    override func setUp() {
        super.setUp()
        dateHelper = DateHelper()
    }

    override func tearDown() {
        dateHelper = nil
        super.tearDown()
}

    func testDataValid() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let date = dateFormatter.date(from: "22.03.2024 17:13:45")
        let retString = DateHelper.getDateString(date: date)
        XCTAssertEqual("22.03.2024, 17:13:45", retString, "Даты должны быть одинаковые!")
    }

    func testDataInvalid() throws {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let date = dateFormatter.date(from: "22.03.2024 17:13:45")
        let retString = DateHelper.getDateString(date: date)
        XCTAssertNotEqual("22.03.2025, 17:13:45", retString, "Даты не должны быть одинаковые!")
    }

}
