//
//  UserModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 16.03.2024.
//

import Foundation

struct UserModel: Decodable {
    var responce: [User]
}

struct User: Decodable {
    var firstName: String?
    var lastName: String?
    var photo: String?

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case photo = "photo_400_orig"
    }
}
