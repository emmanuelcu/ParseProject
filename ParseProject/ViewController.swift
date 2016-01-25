//
//  ViewController.swift
//  ParseProject
//
//  Created by Emmanuel Cuevas on 1/20/16.
//  Copyright © 2016 Emmanuel Cuevas. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var userTextField: UITextField!
    @IBAction func saveUserButtonPressed(sender: UIButton) {
        //Creating the PFObject
        let loginCredentials = PFObject (className: "LoginCredentials")
        loginCredentials["name"]=self.userTextField.text;
        loginCredentials["password"]=self.passwordTextField.text;
        
        //Saving the PFObject
        loginCredentials.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success){
                let alert = UIAlertView(title: "Alert", message: "Your information has been saved.", delegate: nil, cancelButtonTitle: "OK")
                
                alert.show()
                
                print("data is saved")
                
            }else if(!success){
                NSLog("Error: %@", error!)
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

