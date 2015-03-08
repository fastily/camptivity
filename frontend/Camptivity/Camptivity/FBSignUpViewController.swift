//
//  FacebookLoginViewController.swift
//  Camptivity
//
//  Created by Khoa Nguyen on 2/10/15.
//  Copyright (c) 2015 Camptivity INC. All rights reserved.
//

import UIKit
import Parse

class FBSignUpViewController: UIViewController{
    

    @IBOutlet weak var displayName: UILabel!
    @IBOutlet weak var displayEmail: UILabel!

    
    var fullName : String!
    var email : String!
    var userID : String!
    let provider = ParseDataProvider()
    
    
    
    @IBAction func loginVerifyButton(sender: AnyObject) {
        if (self.fullName != nil && self.email != nil  && self.userID != nil) {
            
                var s = self.provider.fbSignup(userID, email: email, fullname: fullName)
            
                let alert = UIAlertView()
                alert.title = "Signed Up"
                alert.message = "Successfully signed up on Parse"
                alert.delegate = self
                alert.addButtonWithTitle("Ok")
                alert.show()
        }
        else {
            //self.messageLabel.text = "All Fields Required"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (self.fullName != nil){
            self.displayName.text = self.fullName
        }
        if (self.email != nil){
            
            var s  = self.provider.emailRegistered(self.email)
            println(s)
            self.displayEmail.text = self.email
            

            
        }
        
    }
    
    


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


