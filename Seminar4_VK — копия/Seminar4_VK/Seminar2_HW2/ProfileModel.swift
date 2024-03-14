//
//  ProfileModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 14.03.2024.
//

import Foundation

struct ProfileModel: Decodable{
    var responce: [Profile]
}

struct Profile: Decodable{
    
    var firstName: String?
    var lastName: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey{
        //case id
        case firstName = "first_name"
        case lastName = "last_name"
        case photo = "photo_50"
    }
}
