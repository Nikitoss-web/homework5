//
//  ViewController.swift
//  homework1
//
//  Created by НИКИТА ПЕСНЯК on 25.12.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            let viewNew = UIView()
        viewNew.backgroundColor = .gray
        viewNew.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewNew)
        NSLayoutConstraint.activate([
            viewNew.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0.0),
            viewNew.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0.0),
            viewNew.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0.0),
            viewNew.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0.0),
            viewNew.topAnchor.constraint(equalTo: view.topAnchor, constant: 0.0),
            viewNew.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550.0)
        ])
         // button C
        let viewC = UIButton()
        viewC.backgroundColor = .blue
        viewC.setTitle("C", for: .normal)
        viewC.setTitleColor(.white, for: .normal)
        viewC.layer.borderWidth = 0.5
        viewC.layer.borderColor = UIColor.black.cgColor
        viewC.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewC)
        NSLayoutConstraint.activate([
            viewC.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            viewC.widthAnchor.constraint(equalToConstant: 100.0),
            viewC.heightAnchor.constraint(equalToConstant: 100.0),
            viewC.bottomAnchor.constraint(equalTo: viewNew.bottomAnchor, constant: 100.0)
                       ])
        
       
        
        // button 7
        let viewSeven = UIButton()
        viewSeven.backgroundColor = .white
        viewSeven.setTitle("7", for: .normal)
        viewSeven.setTitleColor(.black, for: .normal)
        viewSeven.layer.borderWidth = 0.5
        viewSeven.layer.borderColor = UIColor.black.cgColor
        viewSeven.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewSeven)
        NSLayoutConstraint.activate([
            viewSeven.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            viewSeven.widthAnchor.constraint(equalToConstant: 100.0),
            viewSeven.heightAnchor.constraint(equalToConstant: 100.0),
            viewSeven.bottomAnchor.constraint(equalTo: viewC.bottomAnchor, constant: 100.0)
                       ])
        
        // button 4
        let viewFour = UIButton()
        viewFour.backgroundColor = .white
        viewFour.setTitle("4", for: .normal)
        viewFour.setTitleColor(.black, for: .normal)
        viewFour.layer.borderWidth = 0.5
        viewFour.layer.borderColor = UIColor.black.cgColor
        viewFour.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewFour)
        NSLayoutConstraint.activate([
            viewFour.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            viewFour.widthAnchor.constraint(equalToConstant: 100.0),
            viewFour.heightAnchor.constraint(equalToConstant: 100.0),
            viewFour.bottomAnchor.constraint(equalTo: viewSeven.bottomAnchor, constant: 100.0)
                       ])
        
        
        // button 1
        let viewOne = UIButton()
        viewOne.backgroundColor = .white
        viewOne.setTitle("1", for: .normal)
        viewOne.setTitleColor(.black, for: .normal)
        viewOne.layer.borderWidth = 0.5
        viewOne.layer.borderColor = UIColor.black.cgColor
        viewOne.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewOne)
        NSLayoutConstraint.activate([
            viewOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            viewOne.widthAnchor.constraint(equalToConstant: 100.0),
            viewOne.heightAnchor.constraint(equalToConstant: 100.0),
            viewOne.bottomAnchor.constraint(equalTo: viewFour.bottomAnchor, constant: 100.0)
                       ])
        
        // button .
        let viewDot = UIButton()
        viewDot.backgroundColor = .white
        viewDot.setTitle(".", for: .normal)
        viewDot.setTitleColor(.black, for: .normal)
        viewDot.layer.borderWidth = 0.5
        viewDot.layer.borderColor = UIColor.black.cgColor
        viewDot.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewDot)
        NSLayoutConstraint.activate([
            viewDot.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            viewDot.widthAnchor.constraint(equalToConstant: 100.0),
            viewDot.heightAnchor.constraint(equalToConstant: 100.0),
            viewDot.bottomAnchor.constraint(equalTo: viewOne.bottomAnchor, constant: 100.0)
                       ])
        
        // button delete
        let viewDelete = UIButton()
        viewDelete.backgroundColor = .blue
        viewDelete.setTitle("\u{232B}", for: .normal)
        viewDelete.setTitleColor(.white, for: .normal)
        viewDelete.layer.borderWidth = 0.5
        viewDelete.layer.borderColor = UIColor.black.cgColor
        viewDelete.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewDelete)
        NSLayoutConstraint.activate([
            viewDelete.leftAnchor.constraint(equalTo: viewC.leftAnchor, constant: 100.0),
            viewDelete.widthAnchor.constraint(equalToConstant: 100.0),
            viewDelete.heightAnchor.constraint(equalToConstant: 100.0),
            viewDelete.bottomAnchor.constraint(equalTo: viewNew.bottomAnchor, constant: 100.0)
                       ])
        
        // button procent
        let viewProcent = UIButton()
        viewProcent.backgroundColor = .blue
        viewProcent.setTitle("\u{0025}", for: .normal)
        viewProcent.setTitleColor(.white, for: .normal)
        viewProcent.layer.borderWidth = 0.5
        viewProcent.layer.borderColor = UIColor.black.cgColor
        viewProcent.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewProcent)
        NSLayoutConstraint.activate([
            viewProcent.leftAnchor.constraint(equalTo: viewDelete.leftAnchor, constant: 100.0),
            viewProcent.widthAnchor.constraint(equalToConstant: 100.0),
            viewProcent.heightAnchor.constraint(equalToConstant: 100.0),
            viewProcent.bottomAnchor.constraint(equalTo: viewNew.bottomAnchor, constant: 100.0)
                   ])
        // button division
        let viewDivision = UIButton()
        viewDivision.backgroundColor = .blue
        viewDivision.setTitle("\u{00F7}", for: .normal)
        viewDivision.setTitleColor(.white, for: .normal)
        viewDivision.layer.borderWidth = 0.5
        viewDivision.layer.borderColor = UIColor.black.cgColor
        viewDivision.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewDivision)
        NSLayoutConstraint.activate([
            viewDivision.leftAnchor.constraint(equalTo: viewProcent.leftAnchor, constant: 100.0),
            viewDivision.widthAnchor.constraint(equalToConstant: 100.0),
            viewDivision.heightAnchor.constraint(equalToConstant: 100.0),
            viewDivision.bottomAnchor.constraint(equalTo: viewNew.bottomAnchor, constant: 100.0)
                   ])
        
        
        // button 8
        let viewEight = UIButton()
        viewEight.backgroundColor = .white
        viewEight.setTitle("8", for: .normal)
        viewEight.setTitleColor(.black, for: .normal)
        viewEight.layer.borderWidth = 0.5
        viewEight.layer.borderColor = UIColor.black.cgColor
        viewEight.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewEight)
        NSLayoutConstraint.activate([
            viewEight.leftAnchor.constraint(equalTo: viewSeven.leftAnchor, constant: 100.0),
            viewEight.widthAnchor.constraint(equalToConstant: 100.0),
            viewEight.heightAnchor.constraint(equalToConstant: 100.0),
            viewEight.bottomAnchor.constraint(equalTo: viewDelete.bottomAnchor, constant: 100.0)
                   ])
        
        // button 9
        let viewNine = UIButton()
        viewNine.backgroundColor = .white
        viewNine.setTitle("9", for: .normal)
        viewNine.setTitleColor(.black, for: .normal)
        viewNine.layer.borderWidth = 0.5
        viewNine.layer.borderColor = UIColor.black.cgColor
        viewNine.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewNine)
        NSLayoutConstraint.activate([
            viewNine.leftAnchor.constraint(equalTo: viewEight.leftAnchor, constant: 100.0),
            viewNine.widthAnchor.constraint(equalToConstant: 100.0),
            viewNine.heightAnchor.constraint(equalToConstant: 100.0),
            viewNine.bottomAnchor.constraint(equalTo: viewDelete.bottomAnchor, constant: 100.0)
                   ])
        
        // button multiply
        let viewMultiply = UIButton()
        viewMultiply.backgroundColor = .blue
        viewMultiply.setTitle("\u{2715}", for: .normal)
        viewMultiply.setTitleColor(.white, for: .normal)
        viewMultiply.layer.borderWidth = 0.5
        viewMultiply.layer.borderColor = UIColor.black.cgColor
        viewMultiply.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewMultiply)
        NSLayoutConstraint.activate([
            viewMultiply.leftAnchor.constraint(equalTo: viewNine.leftAnchor, constant: 100.0),
            viewMultiply.widthAnchor.constraint(equalToConstant: 100.0),
            viewMultiply.heightAnchor.constraint(equalToConstant: 100.0),
            viewMultiply.bottomAnchor.constraint(equalTo: viewDelete.bottomAnchor, constant: 100.0)
                   ])
        
        // button 5
        let viewFive = UIButton()
        viewFive.backgroundColor = .white
        viewFive.setTitle("5", for: .normal)
        viewFive.setTitleColor(.black, for: .normal)
        viewFive.layer.borderWidth = 0.5
        viewFive.layer.borderColor = UIColor.black.cgColor
        viewFive.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewFive)
        NSLayoutConstraint.activate([
            viewFive.leftAnchor.constraint(equalTo: viewFour.leftAnchor, constant: 100.0),
            viewFive.widthAnchor.constraint(equalToConstant: 100.0),
            viewFive.heightAnchor.constraint(equalToConstant: 100.0),
            viewFive.bottomAnchor.constraint(equalTo: viewNine.bottomAnchor, constant: 100.0)
                   ])
        
        // button 6
        let viewSix = UIButton()
        viewSix.backgroundColor = .white
        viewSix.setTitle("6", for: .normal)
        viewSix.setTitleColor(.black, for: .normal)
        viewSix.layer.borderWidth = 0.5
        viewSix.layer.borderColor = UIColor.black.cgColor
        viewSix.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewSix)
        NSLayoutConstraint.activate([
            viewSix.leftAnchor.constraint(equalTo: viewFive.leftAnchor, constant: 100.0),
            viewSix.widthAnchor.constraint(equalToConstant: 100.0),
            viewSix.heightAnchor.constraint(equalToConstant: 100.0),
            viewSix.bottomAnchor.constraint(equalTo: viewNine.bottomAnchor, constant: 100.0)
                   ])
        
       // button minus
        let viewMinus = UIButton()
        viewMinus.backgroundColor = .blue
        viewMinus.setTitle("\u{2212}", for: .normal)
        viewMinus.setTitleColor(.white, for: .normal)
        viewMinus.layer.borderWidth = 0.5
        viewMinus.layer.borderColor = UIColor.black.cgColor
        viewMinus.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewMinus)
        NSLayoutConstraint.activate([
            viewMinus.leftAnchor.constraint(equalTo: viewSix.leftAnchor, constant: 100.0),
            viewMinus.widthAnchor.constraint(equalToConstant: 100.0),
            viewMinus.heightAnchor.constraint(equalToConstant: 100.0),
            viewMinus.bottomAnchor.constraint(equalTo: viewNine.bottomAnchor, constant: 100.0)
                   ])
        
        // button 2
        let viewTwo = UIButton()
        viewTwo.backgroundColor = .white
        viewTwo.setTitle("2", for: .normal)
        viewTwo.setTitleColor(.black, for: .normal)
        viewTwo.layer.borderWidth = 0.5
        viewTwo.layer.borderColor = UIColor.black.cgColor
        viewTwo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewTwo)
        NSLayoutConstraint.activate([
            viewTwo.leftAnchor.constraint(equalTo: viewOne.leftAnchor, constant: 100.0),
            viewTwo.widthAnchor.constraint(equalToConstant: 100.0),
            viewTwo.heightAnchor.constraint(equalToConstant: 100.0),
            viewTwo.bottomAnchor.constraint(equalTo: viewFive.bottomAnchor, constant: 100.0)
                   ])
        
        // button 3
        let viewThree = UIButton()
        viewThree.backgroundColor = .white
        viewThree.setTitle("3", for: .normal)
        viewThree.setTitleColor(.black, for: .normal)
        viewThree.layer.borderWidth = 0.5
        viewThree.layer.borderColor = UIColor.black.cgColor
        viewThree.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewThree)
        NSLayoutConstraint.activate([
            viewThree.leftAnchor.constraint(equalTo: viewTwo.leftAnchor, constant: 100.0),
            viewThree.widthAnchor.constraint(equalToConstant: 100.0),
            viewThree.heightAnchor.constraint(equalToConstant: 100.0),
            viewThree.bottomAnchor.constraint(equalTo: viewFive.bottomAnchor, constant: 100.0)
                   ])
        
        // button plus
        let viewPlus = UIButton()
        viewPlus.backgroundColor = .blue
        viewPlus.setTitle("+", for: .normal)
        viewPlus.setTitleColor(.white, for: .normal)
        viewPlus.layer.borderWidth = 0.5
        viewPlus.layer.borderColor = UIColor.black.cgColor
        viewPlus.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewPlus)
        NSLayoutConstraint.activate([
            viewPlus.leftAnchor.constraint(equalTo: viewThree.leftAnchor, constant: 100.0),
            viewPlus.widthAnchor.constraint(equalToConstant: 100.0),
            viewPlus.heightAnchor.constraint(equalToConstant: 200.0),
            viewPlus.bottomAnchor.constraint(equalTo: viewFive.bottomAnchor, constant: 200.0)
                   ])
        
        
        // button zero
        let viewZero = UIButton()
        viewZero.backgroundColor = .white
        viewZero.setTitle("0", for: .normal)
        viewZero.setTitleColor(.black, for: .normal)
        viewZero.layer.borderWidth = 0.5
        viewZero.layer.borderColor = UIColor.black.cgColor
        viewZero.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewZero)
        NSLayoutConstraint.activate([
            viewZero.leftAnchor.constraint(equalTo: viewDot.leftAnchor, constant: 100.0),
            viewZero.widthAnchor.constraint(equalToConstant: 100.0),
            viewZero.heightAnchor.constraint(equalToConstant: 100.0),
            viewZero.bottomAnchor.constraint(equalTo: viewTwo.bottomAnchor, constant: 100.0)
                   ])
        
        // button equals
        let viewEquals = UIButton()
        viewEquals.backgroundColor = .white
        viewEquals.setTitle("=", for: .normal)
        viewEquals.setTitleColor(.blue, for:.normal)
        viewEquals.layer.borderWidth = 0.5
        viewEquals.layer.borderColor = UIColor.black.cgColor
        viewEquals.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewEquals)
        NSLayoutConstraint.activate([
            viewEquals.leftAnchor.constraint(equalTo: viewZero.leftAnchor, constant: 100.0),
            viewEquals.widthAnchor.constraint(equalToConstant: 100.0),
            viewEquals.heightAnchor.constraint(equalToConstant: 100.0),
            viewEquals.bottomAnchor.constraint(equalTo: viewTwo.bottomAnchor, constant: 100.0)
                   ])
            
    }


}

