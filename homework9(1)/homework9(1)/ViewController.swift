
import UIKit

class ViewController: UIViewController {
    @IBAction private func studentsButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC {
            navigationController?.pushViewController(vc, animated: true)
        //present(vc, animated: true)
        }
    }
    
    @IBAction private func teachersButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "TeacherVC") as? TeacherVC {
          navigationController?.pushViewController(vc, animated: true)
          //  present(vc, animated: true)
        }
    }
}

