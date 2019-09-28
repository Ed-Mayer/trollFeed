//
//  RandomViewController.swift
//  trollFeed
//
//  Created by M on 26/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {
    
    
    @IBOutlet weak var profileButton: UIImageView!
    @IBAction func backButton(_ sender: Any) {
        
            dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let profileScreenGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(profileTapped(tapGestureRecognizer:)))
        
        profileButton.isUserInteractionEnabled = true
        
        profileButton.addGestureRecognizer(profileScreenGestureRecognizer)

        // Do any additional setup after loading the view.
    }
    
  

    @objc func profileTapped(tapGestureRecognizer: UITapGestureRecognizer){
        
        tapGestureRecognizer.view as! UIImageView
        
        performSegue(withIdentifier: "goProfileSegue", sender: self)
        print("Siema1")
    }
    

}
