//
//  GroupsModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 07.03.2024.
//

import Foundation

struct GroupsModel: Codable {
    var response: GroupsResponse?
}

struct GroupsResponse: Codable {
    var count: Int
    var items: [Group]?
}

struct Group: Codable {
    var id: Int
    var name: String?
    var description: String?
    var photo: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case photo = "photo_50"
    }
}
