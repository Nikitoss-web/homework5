import UIKit

protocol TeacherDelegate: AnyObject {
    func updateTeachers()
}
class ADDTeachertVC: UIViewController{

        
        @IBOutlet private weak var nameTextField: UITextField!
        @IBOutlet private weak var lastNameTextField: UITextField!
        
        weak var delegate: TeacherDelegate?
        
        @IBAction private func saveButtonDidTap() {
            guard let name = nameTextField.text, nameTextField.text != nil,
                  let lastName = lastNameTextField.text, lastNameTextField.text != nil
                  else { return }
            
            let teacher = TeacherViewModel(name: name, lastname: lastName)
            
            CoreDataService.shared.saveTeacher(with: teacher)
            delegate?.updateTeachers()
           navigationController?.popViewController(animated: true)
//            present(vc, animated: true)
//            dismiss(animated: true)
        }
    }



