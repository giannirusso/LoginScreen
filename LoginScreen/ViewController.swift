//
//  ViewController.swift
//  LoginScreen
//
//  Created by D K on 03.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var mainImage = UIImageView()
    var label = UILabel()
    var textFieldOne = TextField()
    var textFieldTwo = TextField()
    var signInButton = UIButton()
    var bottomLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(named: "BackgroundColor")
        
        //Добавление Лого
        view.addSubview(mainImage)
        mainImage.image = UIImage(named: "logo")
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainImage.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -64),
            mainImage.widthAnchor.constraint(equalToConstant: 268 * 0.6),
            mainImage.heightAnchor.constraint(equalToConstant: 344 * 0.6),
            mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        //Добавление Label
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Let's Start!"
        label.font = UIFont.boldSystemFont(ofSize: 38)
        label.textColor = UIColor(named: "WhiteColor")
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 22),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        //Добавление TextField - Email
        view.addSubview(textFieldOne)
        textFieldOne.translatesAutoresizingMaskIntoConstraints = false
        textFieldOne.backgroundColor = UIColor(named: "WhiteColor")
        textFieldOne.placeholder = "  Email"
        textFieldOne.layer.cornerRadius = 8
        NSLayoutConstraint.activate([
            textFieldOne.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 27),
            textFieldOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 22),
            textFieldOne.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -22),
            textFieldOne.heightAnchor.constraint(equalToConstant: 60)
        ])
        //Добавление TextField - Password
        view.addSubview(textFieldTwo)
        textFieldTwo.translatesAutoresizingMaskIntoConstraints = false
        textFieldTwo.backgroundColor = UIColor(named: "WhiteColor")
        textFieldTwo.placeholder = "  Password"
        textFieldTwo.rightView = UIImageView(image: UIImage(systemName: "eye"))
        textFieldTwo.rightViewMode = .always
        textFieldTwo.layer.cornerRadius = 8
        NSLayoutConstraint.activate([
            textFieldTwo.topAnchor.constraint(equalTo: textFieldOne.bottomAnchor, constant: 15),
            textFieldTwo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 22),
            textFieldTwo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -22),
            textFieldTwo.heightAnchor.constraint(equalToConstant: 60)
        ])
        //Добавление Button
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = UIColor(named: "AccentColor")
        signInButton.layer.cornerRadius = 8
        signInButton.titleLabel?.isHidden = false
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(UIColor(named: "BackgroundColor"), for: .normal)
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: textFieldTwo.bottomAnchor, constant: 30),
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 58),
            signInButton.widthAnchor.constraint(equalToConstant: 158)
        ])
        //Добавление Label - Sign Up
        view.addSubview(bottomLabel)
        let stringOne = NSAttributedString.init(string: " Sign Up",attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(named: "AccentColor")!])
        let stringTwo = NSAttributedString.init(string: "Don't have an account?",attributes: [NSAttributedString.Key.foregroundColor : UIColor.init(named: "MainTextColor")!])
        let combination = NSMutableAttributedString.init(string: "")
        combination.append(stringTwo)
        combination.append(stringOne)
        bottomLabel.attributedText = combination
        bottomLabel.font = UIFont.boldSystemFont(ofSize: 15)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 30),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
    }
}

