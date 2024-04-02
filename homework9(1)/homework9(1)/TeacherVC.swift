import UIKit

class TeacherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
 
    
    
    @IBOutlet private weak var chooseTeacherTableView: UITableView!
    
    private var teachers = [TeacherViewModel]()
//        didSet {
//            chooseTeacherTableView.reloadData()
//        }
    

    var teacherSelectionHandler: ((TeacherViewModel) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            fetchData()
        chooseTeacherTableView.dataSource = self
            chooseTeacherTableView.delegate = self
    }
    
//    private func fetchData() {
//        teachers = CoreDataService.shared.fetchTeachers()
//    }
    private func fetchData() {
        teachers = CoreDataService.shared.fetchTeachers()
            chooseTeacherTableView.reloadData()
//        DispatchQueue.main.async {
//            self.teachers = CoreDataService.shared.fetchTeachers()
//            self.chooseTeacherTableView.reloadData()
//        }
    }
    
    @IBAction private func addButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ADDTeachertVC") as? ADDTeachertVC {
            vc.delegate = self
            navigationController?.pushViewController(vc, animated: true)
           // present(vc, animated: true)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teacher = teachers[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "YourCellIdentifier", for: indexPath) as! ResultsTableViewCell
        cell.nameLable?.text = teacher.name
        cell.lastnameLable?.text = teacher.lastname
        print(teacher.name, teacher.lastname)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedTeacher = teachers[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(identifier: "TeacherStudentVC") as? TeacherStudentVC {
            vc.loadView()
            vc.getStudentsForTeacher(with: selectedTeacher)
            vc.configureTeacherDetails(with: selectedTeacher)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

extension TeacherVC: TeacherDelegate {
    
    func updateTeachers() {
        fetchData()
    }
}

class ResultsTableViewCell: UITableViewCell{
    @IBOutlet  weak var nameLable: UILabel!
    @IBOutlet  weak var lastnameLable: UILabel!
}

