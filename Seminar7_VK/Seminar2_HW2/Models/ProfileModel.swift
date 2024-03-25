//
//  UserModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 13.03.2024.
//

struct ProfileModel: Decodable {
    var response: Profile
    struct Profile: Decodable {
        var firstName: String?
        var lastName: String?
        var screenName: String?
        var photo: String?
        
        enum CodingKeys: String, CodingKey {
            case firstName = "first_name"
            case lastName = "last_name"
            case screenName = "screen_name"
            case photo = "photo_200"
        }
    }
}
