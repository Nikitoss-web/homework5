//
//  ViewController.swift
//  homework6
//
//  Created by НИКИТА ПЕСНЯК on 21.03.24.
//

import UIKit

 final class ViewController: UIViewController {
    
    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var interestsButton: UIButton!
    @IBOutlet private weak var persInfoButton: UIButton!
    @IBOutlet private weak var educationButton: UIButton!
    @IBOutlet private weak var gmailButton: UIButton!
    @IBOutlet private weak var telegramButton: UIButton!
 
    @IBAction private func persInfoButtonDidTap() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "PersonalVC") as! ViewController
                navigationController!.pushViewController(secondVC, animated: true)
    }
    
    @IBAction private func educationButtonDidTap() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = mainStoryboard.instantiateViewController(withIdentifier: "EducationVC") as! ViewController
                navigationController!.pushViewController(thirdVC, animated: true)
    }
     @IBAction private func interestsButtonDidTap(){
         let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
         let twoVC = mainStoryboard.instantiateViewController(withIdentifier: "InterestsVC") as! ViewController
                 navigationController!.pushViewController(twoVC, animated: true)
     }

    
    @IBAction func telegramButtonDidTap() {
        let url = URL(string: "https://t.me/@nikitos_134")!
        UIApplication.shared.open(url, options: [:])
    }
     @IBAction func gmailButtonDidTap() {
         let url = URL(string: "https://mail.google.com/mail/u/0/#inbox")!
         UIApplication.shared.open(url, options: [:])
     }
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


