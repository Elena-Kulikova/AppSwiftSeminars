//
//  FrendsViewController.swift
//  Seminar2_HW2
//
//  Created by Elena on 05.03.2024.
//

import Foundation
import UIKit

class FrendsViewController: UITableViewController {
    private var networkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Friends"
        view.backgroundColor = UIColor.white
        networkService.getFriends()
    
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomTableViewCellFriends()
    }
}
