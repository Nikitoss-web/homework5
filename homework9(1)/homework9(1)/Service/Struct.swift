//
//  Struct.swift
//  homework9(1)
//
//  Created by НИКИТА ПЕСНЯК on 31.03.24.
//

import Foundation
struct StudentViewModel {
    var name: String
    var age: Int16
    var teacher: TeacherViewModel
}
struct TeacherViewModel {
    var name: String
    var lastname: String
    static func ==(lhs: TeacherViewModel, rhs: TeacherViewModel) -> Bool {
        return lhs.name == rhs.name && lhs.lastname == rhs.lastname
    }
}
