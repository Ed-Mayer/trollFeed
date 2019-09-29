//
//  LoginViewController.swift
//  trollFeed
//
//  Created by M on 25/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
     
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
            Auth.auth().signIn(withEmail: loginTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil {
                    
                    let alert = UIAlertController(title: "Wrong data", message: "", preferredStyle: .alert)
        
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))

                    self.present(alert, animated: true)

                }
                
                else {
                    
                    let alert = UIAlertController(title: "Hello, \(self.loginTextField.text!)", message: "Login successfull! ", preferredStyle: .alert)
                    
                    let okAction = UIAlertAction(title: "Great! Take me back.", style: UIAlertAction.Style.default) {
                        UIAlertAction in
                        self.performSegue(withIdentifier: "loggedin", sender: self)
                    }
                    alert.addAction(okAction)

                    self.present(alert, animated: true)
                    

                    
                }
                
            }
    }
    @IBAction func registerButton(_ sender: Any) {
        
        performSegue(withIdentifier: "registerSegue", sender: self)
    }
    
    @IBAction func backFromProfileButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
