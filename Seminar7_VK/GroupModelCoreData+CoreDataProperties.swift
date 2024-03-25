//
//  GroupModelCoreData+CoreDataProperties.swift
//  Seminar2_HW2
//
//  Created by Elena on 17.03.2024.
//
//

import Foundation
import CoreData

extension GroupModelCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GroupModelCoreData> {
        return NSFetchRequest<GroupModelCoreData>(entityName: "GroupModelCoreData")
    }

    @NSManaged public var caption: String?
    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var photo: String?

}

extension GroupModelCoreData: Identifiable {

}
