//
//  ViewController.swift
//  FoursquareCloneWithParse
//
//  Created by Erhan Acisu on 3.10.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit
import Parse

class SignUpVC: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        
    }
    @IBAction func signinClicked(_ sender: Any) {
        
        if userNameText.text != "" && passwordText.text != ""{
            PFUser.logInWithUsername(inBackground: userNameText.text!, password: passwordText.text!) { (user, error) in
                if error != nil{
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }
                else{
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        }
        else{
            makeAlert(titleInput: "Error", messageInput: "username pw pls")
        }
        
    }
    @IBAction func signupClicked(_ sender: Any) {
        if userNameText.text != "" && passwordText.text != ""{
            let user = PFUser()
            user.username = userNameText.text!
            user.password = passwordText.text!
            user.signUpInBackground { (success, error) in
                if error != nil {
                    self.makeAlert(titleInput: "error", messageInput: error?.localizedDescription ?? "Error")
                }
                else{
                    
                    //Segue
                    print("ok")
                }
            }
        }
        else{
            makeAlert(titleInput: "Error", messageInput: "Username Password")
        }
    }
    func makeAlert(titleInput : String, messageInput : String ){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okbutton)
        self.present(alert, animated: true,completion: nil)
        
    }
}




