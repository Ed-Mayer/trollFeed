//
//  AddImageHandlers.swift
//  trollFeed
//
//  Created by M on 26/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseStorage


extension AddImageViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate   {
    

    func handleSelectDeviceUpload() {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var imagePicked: UIImage?
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage? {
            imagePicked = editedImage
        }
        if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage? {
            imagePicked = originalImage
            }
        
        
        if imagePicked != nil {
            uploadedImageView.image = imagePicked
            uploadedURL.isUserInteractionEnabled = false
        
    }
        
        dismiss(animated: true, completion: nil)

}
}
