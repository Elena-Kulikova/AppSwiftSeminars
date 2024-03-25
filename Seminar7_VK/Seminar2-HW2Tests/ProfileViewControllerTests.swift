//
//  ProfileViewController.swift
//  Seminar2_HW2Tests
//
//  Created by Elena on 25.03.2024.
//

import XCTest
@testable import Seminar2_HW2

final class PrifileViewControllerTests: XCTestCase {
    var profile: ProfileViewController!

    override func setUp() {
        super.setUp()
        profile = ProfileViewController(isUserProfile: true)
    }

    override func tearDown() {
        profile = nil
        super.tearDown()
    }

    func testUpdateFunctionWhenIsNotUserProfile() {
        profile.isUserProfile = false
        profile.update()
        XCTAssert(profile.themeView.isHidden)
    }

    func tesUpdateWhenIsUserProfile() {
        let profileVC = ProfileModel(response: ProfileModel.Profile(firstName: "Елена", lastName: "Куликова", screenName: "elena", photo: "photoURL"))
        profile.isUserProfile = (profile != nil)
        profile.update()
        XCTAssertEqual(profile.nameLabelView.text,
                       "Елена Куликова(elena)")
        
    }

}
