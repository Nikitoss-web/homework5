//
//  Student+CoreDataProperties.swift
//  homework9(1)
//
//  Created by НИКИТА ПЕСНЯК on 5.02.24.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var teacher: Teacher?

}

extension Student : Identifiable {

}
