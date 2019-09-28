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
    
    let storage = Storage.storage()
    
    
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
        
        let storageRef = storage.reference()
        let imageRef = storageRef.child("imageUploaded")
        
        
    }
    
//    func saveImage() {
//
//        let storage = Storage.storage()
//        var data = Data()
//        data = (uploadedImageView.image!).pngData()! // image file name
//        // Create a storage reference from our storage service
//        let storageRef = storage.reference()
//        let imageRef = storageRef.child("images/lock.png")
//        _ = imageRef.putData(data, metadata: nil, completion: { (metadata,error ) in
//        guard let metadata = metadata else{
//        print(error!)
//        return
//        }
//            _ = metadata.size
//             // You can also access to download URL after upload.
//             storageRef.downloadURL { (url, error) in
//                guard let downloadURL = url  else {
//
//                 return
//        }
//                print(downloadURL)
//
//    }
//}
//)}
}
