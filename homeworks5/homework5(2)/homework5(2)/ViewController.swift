import UIKit

class ViewController: UIViewController {
    
    var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        let labelView = UIView()
        labelView.backgroundColor = .lightGray
        labelView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelView)
        
        NSLayoutConstraint.activate([
            labelView.topAnchor.constraint(equalTo: view.topAnchor),
            labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            labelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            labelView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
        
        resultLabel = UILabel()
        resultLabel.textAlignment = .center
        resultLabel.font = UIFont.systemFont(ofSize: 24)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(resultLabel)

        NSLayoutConstraint.activate([
            resultLabel.centerXAnchor.constraint(equalTo: labelView.centerXAnchor),
            resultLabel.centerYAnchor.constraint(equalTo: labelView.centerYAnchor)
        ])
        var buttonTitles: [[String]] = [
            ["C", "\u{232B}", "%", "\u{00F7}"],
            ["7", "8", "9", "\u{2715}"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "+"],
            [".", "0", "=", "+"]
        ]
        
        let rows = buttonTitles.count
        let columns = buttonTitles[0].count
        let buttonWidth = view.frame.size.width / CGFloat(columns)
        let buttonHeight = (view.frame.size.height - labelView.frame.size.height) / CGFloat(rows) / 2
        
        for i in 0..<rows {
            for j in 0..<columns {
                if j < buttonTitles[i].count {
                    let title = buttonTitles[i][j]
                    
                    let button = UIButton()
                    button.backgroundColor = title.isNumeric || title == "." ? .white : (title == "=" ? .white : .systemBlue)
                    button.setTitle(title, for: .normal)
                    button.setTitleColor(title == "=" ? .systemBlue : (title.isNumeric || title == "." ? .black : .white), for: .normal)
                    button.layer.borderWidth = 0.5
                    button.layer.borderColor = UIColor.black.cgColor
                    button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
                    button.translatesAutoresizingMaskIntoConstraints = false
                    view.addSubview(button)
                    
                    NSLayoutConstraint.activate([
                        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: CGFloat(j) * buttonWidth),
                        button.widthAnchor.constraint(equalToConstant: buttonWidth),
                        button.heightAnchor.constraint(equalToConstant: buttonHeight),
                        button.topAnchor.constraint(equalTo: labelView.bottomAnchor, constant: CGFloat(i) * buttonHeight)
                    ])
                    
                    button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
                }
            }
        }
    }
    
    @objc func buttonTapped(sender: UIButton) {
        if let title = sender.title(for: .normal), title != "" {
            if title == "=" {
                resultLabel.text = "Perform calculation here"
            } else {
                if let currentText = resultLabel.text {
                    resultLabel.text = currentText + title
                } else {
                    resultLabel.text = title
                }
            }
        }
    }}

extension String {
    var isNumeric: Bool {
        return Double(self) != nil
    }
}
