//
//  CoreData.swift
//  homework9(1)
//
//  Created by НИКИТА ПЕСНЯК on 5.02.24.
//

import CoreData

final class CoreDataService {
    
    static var shared = CoreDataService()
    
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "homework9_1_")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    private var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func saveStudent(with student: StudentViewModel) {
        let newStudent = Student(context: self.context)
        newStudent.age = student.age
        newStudent.name = student.name
        
        let request = Teacher.fetchRequest()
        let predicate = NSPredicate(format: "name == %@ AND lastname == %@", student.teacher.name , student.teacher.lastname)
        request.predicate = predicate
        
        if let teachers = try? context.fetch(request), let teacher = teachers.first {
            newStudent.teacher = teacher
        }
        saveContext()
    }
    
    func saveTeacher(with teacher: TeacherViewModel) {
        let newTeacher = Teacher(context: self.context)
        newTeacher.name = teacher.name
        newTeacher.lastname = teacher.lastname
        saveContext()
    }
    
    func fetchStudents() -> [StudentViewModel] {
        let request = Student.fetchRequest()
        guard let students = try? context.fetch(request) else { return [] }
        let studentViewModels = students.compactMap { return StudentViewModel(name: $0.name ?? "nil", age: $0.age, teacher: TeacherViewModel(name: $0.teacher?.name ?? "nil", lastname: $0.teacher?.lastname ?? "nil")) }
        return studentViewModels
    }
    
    func fetchTeachers() -> [TeacherViewModel] {
        let request = Teacher.fetchRequest()
        guard let teachers = try? context.fetch(request) else { return [] }
        let teacherViewModels = teachers.compactMap { return TeacherViewModel(name: $0.name ?? "nil", lastname: $0.lastname ?? "nil") }
        return teacherViewModels
    }
    
    private func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
