//
//  PhotosModel.swift
//  Seminar2_HW2
//
//  Created by Elena on 07.03.2024.
//

import Foundation

struct PhotosModel: Decodable {
    var response: Photos
}

struct Photos: Decodable {
    var items: [Photo]
}

struct Photo: Decodable {
    var id: Int
    var text: String?
    var sizes: [Sizes]
}

struct Sizes: Codable {
    var url: String
}
