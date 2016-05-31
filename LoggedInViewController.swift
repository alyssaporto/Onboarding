//
//  LoggedInViewController.swift
//  Onboarding
//
//  Created by Alyssa Porto on 5/31/16.
//  Copyright © 2016 Alyssa Porto. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = UserController.sharedInstance.logged_in_user
        let greetingName = user!.email
        greetingLabel.text = "Welcome, \(greetingName)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logOutButtonTapped(sender: AnyObject) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.navigateToLogOutNavigationController()
    }
    
}
