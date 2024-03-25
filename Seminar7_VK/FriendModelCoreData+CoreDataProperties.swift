//
//  FriendModelCoreData+CoreDataProperties.swift
//  Seminar2_HW2
//
//  Created by Elena on 17.03.2024.
//
//

import Foundation
import CoreData

extension FriendModelCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FriendModelCoreData> {
        return NSFetchRequest<FriendModelCoreData>(entityName: "FriendModelCoreData")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var id: Int64
    @NSManaged public var lastName: String?
    @NSManaged public var online: Int16
    @NSManaged public var photo: String?

}

extension FriendModelCoreData: Identifiable {
}
