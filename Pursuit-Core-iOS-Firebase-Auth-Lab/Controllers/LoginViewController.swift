//
//  LoginViewController.swift
//  Pursuit-Core-iOS-Firebase-Auth-Lab
//
//  Created by Eric Widjaja on 11/7/19.
//  Copyright © 2019 Eric W. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func passwordFieldHitEnter(_ sender: UITextField) {
                guard let email = emailTextField.text, email != "", let password = passwordTextField.text, password != "" else {return}
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            print(result)
            print(error)
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

