//
//  ViewController.swift
//  BeTheHero2
//
//  Created by Douglas castilho on 07/06/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginButton: UIButton!
    var nameTextField: UITextField!
    var passwordTextField: UITextField!
    var labelText: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(displayP3Red: 229, green: 229, blue: 229, alpha: 1)
        
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        loginButton.addTarget(self,
        action: #selector(handleLoginTouchUpInside),
        for: .touchUpInside)
        
        labelText = UILabel(frame: .zero)
        labelText.text = "Enter your login name"
        labelText.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelText)
        
        nameTextField = UITextField(frame: .zero)
        nameTextField.placeholder = "Login Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)

        passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        
        constraintsInit()
        
        // Do any additional setup after loading the view.
    }
    
    func constraintsInit() {
        NSLayoutConstraint.activate([
          loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          
          passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
          passwordTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          passwordTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),

          nameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
          nameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          nameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            
          labelText.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -20),
          labelText.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          labelText.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
        ])
    }
    
    @objc func handleLoginTouchUpInside() {
      print("Login has been tapped")
      if nameTextField.isFirstResponder {
        nameTextField.resignFirstResponder()
      }
      if passwordTextField.isFirstResponder {
        passwordTextField.resignFirstResponder()
      }
    }


}

