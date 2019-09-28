//
//  UserProfileViewController.swift
//  trollFeed
//
//  Created by M on 26/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit
import Firebase
class UserProfileViewController: UIViewController {

  
    @IBOutlet weak var helloUser: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        helloUser.text = "Hello, \(Auth.auth().currentUser?.email ?? "User")"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)

    }
    
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
               
      do {
        try Auth.auth().signOut()
       } catch {
        print("Error during signing out")
        }
        
        
        dismiss(animated: true, completion: nil)

     }
    
      



}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

