//
//  Methods.swift
//  trollFeed
//
//  Created by M on 28/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseStorage



extension UIViewController {
    

    
    func checkIfLoggedIn(segueIfLogged: String, segueIfNotLogged: String) {
    
        var segue: String = ""
        if Auth.auth().currentUser != nil {
                segue = segueIfLogged
        }
        else {
            segue = segueIfNotLogged
        }
              return performSegue(withIdentifier: "\(segue)", sender: self)

    }
    
    
    
    
    
    
    
    
    
    
}
