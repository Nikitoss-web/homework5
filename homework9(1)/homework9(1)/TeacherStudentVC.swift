import UIKit
import Foundation
class TeacherStudentVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var lastNameLabel: UILabel!
    @IBOutlet private weak var studentstTableView: UITableView!
    private var students = [StudentViewModel]()
    private var studentsForTeacher = [StudentViewModel]()
    
    var teacher: TeacherViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        if let teacher = teacher {
            getStudentsForTeacher(with: teacher)
            configureTeacherDetails(with: teacher)
        }

    }
    
    func getStudentsForTeacher(with teacher: TeacherViewModel) {
        students = CoreDataService.shared.fetchStudents()
        studentsForTeacher = students.filter { $0.teacher == teacher }
        print(studentsForTeacher)
        studentstTableView.dataSource = self
        studentstTableView.delegate = self
        studentstTableView.reloadData()
    }
    
    func configureTeacherDetails(with teacher: TeacherViewModel) {
        nameLabel.text = teacher.name
        lastNameLabel.text = teacher.lastname
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsForTeacher.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTeacher = studentsForTeacher[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "YourCellIdentifier1", for: indexPath) as! ResultssTableViewCell
        cell.namesLable?.text = studentTeacher.name
        cell.agesLable?.text = String(studentTeacher.age)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let student = studentsForTeacher[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC {
            vc.loadView()
            vc.configure(with: student)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
class ResultssTableViewCell: UITableViewCell{
    @IBOutlet  weak var namesLable: UILabel!
    @IBOutlet  weak var agesLable: UILabel!
}








