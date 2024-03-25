//
//  Seminar2_HW2UITests.swift
//  Seminar2_HW2UITests
//
//  Created by Elena on 24.03.2024.
//

import XCTest
@testable import Seminar2_HW2

final class Seminar2HW2UITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    func testTabClick() {
        
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Photos"].tap()
        tabBar.buttons["Friends"].tap()
        app.navigationBars["Friends"].buttons["person"].tap()
        
        let app2 = app
        app2?/*@START_MENU_TOKEN@*/.staticTexts["Изменить цвет фона на серый"]/*[[".buttons[\"Изменить цвет фона на серый\"].staticTexts[\"Изменить цвет фона на серый\"]",".staticTexts[\"Изменить цвет фона на серый\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2?/*@START_MENU_TOKEN@*/.staticTexts["Изменить цвет фона на сиреневый"]/*[[".buttons[\"Изменить цвет фона на сиреневый\"].staticTexts[\"Изменить цвет фона на сиреневый\"]",".staticTexts[\"Изменить цвет фона на сиреневый\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app2?/*@START_MENU_TOKEN@*/.staticTexts["Изменить цвет фона на белый"]/*[[".buttons[\"Изменить цвет фона на белый\"].staticTexts[\"Изменить цвет фона на белый\"]",".staticTexts[\"Изменить цвет фона на белый\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Profile"].buttons["Friends"].tap()
                                        
    }
}
