//
//  ADDStudentVC.swift
//  homework9(1)
//
//  Created by НИКИТА ПЕСНЯК on 5.02.24.
//

import UIKit
protocol CreateDelegate: AnyObject {
    func updateStudents()
}
class ADDStudentVC: UIViewController {

    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var ageTextField: UITextField!
    @IBOutlet private weak var chooseTeacherButton: UIButton!
    
    private var selectedTeacher: TeacherViewModel?
   
    weak var delegate: CreateDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func saveData() {
        print("Saving data...")
        
        guard let name = nameTextField.text, !name.isEmpty else {
            print("Name is missing.")
            return
        }
        
        guard let ageText = ageTextField.text, !ageText.isEmpty, let age = Int16(ageText) else {
            print("Age is missing or invalid.")
            return
        }
        
        guard let selectedTeacher = selectedTeacher else {
            print("Selected teacher is missing.")
            return
        }

        let student = StudentViewModel(name: name, age: age, teacher: selectedTeacher)
        
        CoreDataService.shared.saveStudent(with: student)
        
        delegate?.updateStudents()
        print("Data successfully saved.")
    }
//    private func saveData() {
//        guard let name = nameTextField.text, !name.isEmpty,
//              let ageText = ageTextField.text, !ageText.isEmpty,
//              let age = Int16(ageText),
//              let selectedTeacher = selectedTeacher
//        else { return }
//        
//        let student = StudentViewModel(name: name, age: age, teacher: selectedTeacher)
//        
//        CoreDataService.shared.saveStudent(with: student)
//        
//        delegate?.updateStudents()
//    }
    
    @IBAction private func chooseTeacherDidTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ChooseTeacherVC") as? ChooseTeacherVC {
            
            vc.teacherSelectionHandler = { selectedTeacher in
                self.selectedTeacher = selectedTeacher
                self.chooseTeacherButton.setTitle("Selected: \(selectedTeacher.name) \(selectedTeacher.lastname)", for: .normal)
            
            }
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction private func saveButtonDidTap(_ sender: Any) {
        saveData()
        navigationController?.popViewController(animated: true)
      //  dismiss(animated: true)
    }
}
