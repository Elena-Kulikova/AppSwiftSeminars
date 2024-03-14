//
//  ProfileViewController.swift
//  Seminar2_HW2
//
//  Created by Elena on 14.03.2024.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    
    private var networkservice = NetworkService()
    
    
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
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private var isUserProfile : Bool
    
    init(networkservice: NetworkService = NetworkService(), photo: UIImageView, profileName: UILabel, isUserProfile: Bool) {
        self.networkservice = networkservice
        self.photo = photo
        self.profileName = profileName
        self.isUserProfile = isUserProfile
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        view.backgroundColor = .gray
        setupViews()
    }
    
    private func setupViews(){
        view.addSubview(photo)
        view.addSubview(profileName)
        setupConstraints()
    }
    
    private func setupConstraints(){
        photo.translatesAutoresizingMaskIntoConstraints = false
        profileName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            photo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            //photo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            photo.heightAnchor.constraint(equalToConstant: 50),
            photo.widthAnchor.constraint(equalTo: photo.heightAnchor),
            
            profileName.topAnchor.constraint(equalTo: photo.topAnchor),
            profileName.leadingAnchor.constraint(equalTo: photo.trailingAnchor, constant: 20),
            profileName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            //profileName.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            profileName.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
    }
    
    
}
