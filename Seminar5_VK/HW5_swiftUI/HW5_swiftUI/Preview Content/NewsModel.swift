//
//  NewsModel.swift
//  HW5_swiftUI
//
//  Created by Elena on 14.03.2024.
//

import Foundation

struct NewsModel: Decodable {
    var results: [News]
}



struct News: Decodable, Identifiable {
    var id: Int
    var date: Double
    var title: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case date = "publication_date"
        case title
    }
}
