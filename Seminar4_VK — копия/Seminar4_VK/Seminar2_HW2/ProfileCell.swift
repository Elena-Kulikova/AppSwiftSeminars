//
//  ProfileCell.swift
//  Seminar2_HW2
//
//  Created by Elena on 13.03.2024.
//

import Foundation
import UIKit

final class ProfileCell: UITableViewCell{
    
    private var photo: UIImageView = {
        let photo = UIImageView()
        photo.backgroundColor = .green
        photo.layer.cornerRadius = 10
        photo.layer.masksToBounds = true
        return photo
    }()
    
    private var profileName: UILabel = {
       let label = UILabel()
       label.textColor = .black
       label.backgroundColor = .clear
       return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        //setupViews()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
