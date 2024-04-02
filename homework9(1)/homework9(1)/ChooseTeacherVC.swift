//
//  ChooseTeacherVC.swift
//  homework9(1)
//
//  Created by НИКИТА ПЕСНЯК on 1.04.24.
//

import UIKit
class ChooseTeacherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
      
     
        
        
        @IBOutlet private weak var chooseTeacherTableView: UITableView!
        
        private var teachers = [TeacherViewModel]()
    //        didSet {
    //            chooseTeacherTableView.reloadData()
    //        }
        

        var teacherSelectionHandler: ((TeacherViewModel) -> Void)?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            chooseTeacherTableView.dataSource = self
                chooseTeacherTableView.delegate = self
                fetchData()
         
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "YourCellIdentifier2", for: indexPath) as! Results1TableViewCell
            cell.nameLable?.text = teacher.name
            cell.lastnameLable?.text = teacher.lastname
            print(teacher.name, teacher.lastname)
            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedTeacher = teachers[indexPath.row]
            teacherSelectionHandler?(selectedTeacher)
            navigationController?.popViewController(animated: true)
        }
    }

    extension ChooseTeacherVC: TeacherDelegate {
        
        func updateTeachers() {
            fetchData()
        }
    }

    class Results1TableViewCell: UITableViewCell{
        @IBOutlet  weak var nameLable: UILabel!
        @IBOutlet  weak var lastnameLable: UILabel!
    }

