//
//  RegisterViewController.swift
//  OnboardingDemo2a
//
//  Created by Alyssa Porto on 5/31/16.
//  Copyright © 2016 Alyssa Porto. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var failureDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerButtonTapped(sender: AnyObject) {
        let email = emailField.text
        let password = passwordField.text
        let (failureMessage, user) = UserController.sharedInstance.registerUser(email!, newPassword: password!)
        if (user != nil) {
            print("User registered view registration view")
            failureDisplay.text = ""
        } else {
            if (failureMessage != nil) {
                failureDisplay.text = failureMessage
            }
        }

    }
    
}
