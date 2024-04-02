
import UIKit

class ResultVC: UIViewController{
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    @IBOutlet private weak var teacherLabel: UILabel!
    
    
    private var student: StudentViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func configure (with student: StudentViewModel) {
        nameLabel.text = student.name
        ageLabel.text = String(student.age)
        teacherLabel.text = student.teacher.name + "  " + student.teacher.lastname
    }
}
