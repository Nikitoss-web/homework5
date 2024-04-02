//
//  SecondVC.swift
//  homework9(1)
//
//  Created by НИКИТА ПЕСНЯК on 5.02.24.
//

import UIKit

class SecondVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    
    
    @IBOutlet private weak var studentsTableView: UITableView!
    
    private var students = [StudentViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentsTableView.dataSource = self
        studentsTableView.delegate = self
        studentsTableView.reloadData()
        fetchData()
    }
    
    private func fetchData() {
        students = CoreDataService.shared.fetchStudents()
        studentsTableView.reloadData()
    }
    
    @IBAction private func addButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ADDStudentVC") as? ADDStudentVC {
            vc.delegate = self
           navigationController?.pushViewController(vc, animated: true)
           // present(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let student = students[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "YourCellIdentifier3", for: indexPath) as! ResultTableViewCell
        cell.nameLable?.text = student.name
        cell.lastnameLable?.text = String(student.age)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let student = students[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC {
            
            vc.loadView()
            vc.configure(with: student)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


extension SecondVC: CreateDelegate {
    func updateStudents() {
        fetchData()
    }
}
class ResultTableViewCell: UITableViewCell{
    @IBOutlet  weak var nameLable: UILabel!
    @IBOutlet  weak var lastnameLable: UILabel!
}
