//
//  GroupDateCoreData+CoreDataProperties.swift
//  Seminar2_HW2
//
//  Created by Elena on 17.03.2024.
//
//

import Foundation
import CoreData

extension GroupDateCoreData {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<GroupDateCoreData> {
        return NSFetchRequest<GroupDateCoreData>(entityName: "GroupDateCoreData")
    }

    @NSManaged public var date: Date?

}

extension GroupDateCoreData: Identifiable {}
