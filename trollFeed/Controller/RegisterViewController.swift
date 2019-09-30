//
//  registerViewController.swift
//  trollFeed
//
//  Created by M on 25/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func registerPressed(_ sender: Any) {
        
     
        
        Auth.auth().createUser(withEmail: loginTextField.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                
                let alert = UIAlertController(title: "Wrong data", message: "", preferredStyle: .alert)
    
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))

                self.present(alert, animated: true)

            }
            
            else {
                
                let alert = UIAlertController(title: "Hello, \(self.loginTextField.text!)", message: "Registration successfull! ", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "Great! Take me back.", style: UIAlertAction.Style.default) {
                    UIAlertAction in
                    self.performSegue(withIdentifier: "registered", sender: self)
                }
                alert.addAction(okAction)

                self.present(alert, animated: true)

                
            }
            
        }
        
      }
    
  
    
    
    
    

}
