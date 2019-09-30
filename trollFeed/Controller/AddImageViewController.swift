//
//  AddImageViewController.swift
//  trollFeed
//
//  Created by M on 25/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage

class AddImageViewController: UIViewController {
    
    var url: URL!
    var urlString: String = ""
    var finalUrl = URL(string: "")
    @IBOutlet weak var uploadedURL: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var uploadedImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uploadDeviceButton(_ sender: Any) {
        
        
        handleSelectDeviceUpload()
  
    }

    @IBAction func addButton(_ sender: Any) {
            finalUrl = URL(string: "\(urlString)")
        let uid = Auth.auth().currentUser?.uid
   
        let storageRef = Storage.storage().reference()
        let riversRef = storageRef.child("users/\(uid)/images/\(titleTextField.text)")
        
       
            
            

            let uploadTask = riversRef.putFile(from: finalUrl!, metadata: nil) { metadata, error in
                guard metadata != nil else {
            print("md error")
            return
          }
      
          // You can also access to download URL after upload.
        storageRef.downloadURL { (finalUrl, error) in
            guard finalUrl != nil else {
                print("url error\(self.finalUrl!)")
                return
            }
          }
        }
        
        
        
    }
    
}

