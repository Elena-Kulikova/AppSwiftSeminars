//
//  GroupsModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 07.03.2024.
//

import Foundation
//struct GroupsModel: Decodable {
//    var response: Groups
//}
//
//struct Groups: Decodable {
//    var items: [Group]
//}
//
//struct Group: Codable {
//    var id: Int
//    var name: String?
//    var photo: String?
//    var description: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case id
//        case name
//        case photo = "photo_50"
//        case description
//    }
//}
struct GroupsModel: Decodable {
    var response: Groups
}

struct Groups: Decodable {
    var items: [Group]
}

struct Group: Codable {
    var id: Int
    var name: String?
    var photo: String?
    var description: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case photo = "photo_50"
        case description
    }
}
