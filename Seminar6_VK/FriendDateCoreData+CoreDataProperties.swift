//
//  FriendDateCoreData+CoreDataProperties.swift
//  Seminar2_HW2
//
//  Created by Elena on 17.03.2024.
//
//

import Foundation
import CoreData


extension FriendDateCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FriendDateCoreData> {
        return NSFetchRequest<FriendDateCoreData>(entityName: "FriendDateCoreData")
    }

    @NSManaged public var date: Date?

}

extension FriendDateCoreData : Identifiable {

}
