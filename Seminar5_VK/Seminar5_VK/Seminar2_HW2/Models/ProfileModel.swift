//
//  UserModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 13.03.2024.
//

import Foundation

struct ProfileModel: Decodable {
    var responce: Profile
}


struct Profile: Decodable {
    var firstName: String?
    var lastName: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last name"
        case photo = "photo_50"
    }
}
