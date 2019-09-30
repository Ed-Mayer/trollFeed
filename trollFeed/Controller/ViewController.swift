//
//  ViewController.swift
//  trollFeed
//
//  Created by M on 25/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit
import Firebase
import FirebaseStorage

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBAction func profileButtonPressed(_ sender: Any) {

        checkIfLoggedIn(segueIfLogged: "goToProfile", segueIfNotLogged: "goToLogin")
    }
    
    // SEGUE TO ADD NEW IMAGE VC
   
    @IBAction func addButtonPressed(_ sender: Any) {
        
        if Auth.auth().currentUser != nil {
        performSegue(withIdentifier: "addNewImageSegue", sender: self)
        }
        else if Auth.auth().currentUser == nil{
            let alert = UIAlertController(title: "You are not yet registered.", message: "It takes 10 seconds", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "Register", style: UIAlertAction.Style.default) {
                UIAlertAction in
                self.performSegue(withIdentifier: "goToRegister", sender: self)
            }
            alert.addAction(okAction)

            self.present(alert, animated: true)
        }
        
    }
    
    @IBOutlet weak var mainFeed: UITableView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        mainFeed.dataSource = self
        mainFeed.delegate = self
        
        // REJESTRACJA KOMÓRKI XIB
        
        mainFeed.register(UINib(nibName: "FeedCell", bundle: nil), forCellReuseIdentifier: "customFeedCell")
        configureTableView()
        
        
        
    }

    
//  FEEDCELL NUMBER OF ROWS - SIZE OF DB ALL OF USERS + ADMIN UPLOADS
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
//  KONTENT
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customFeedCell", for: indexPath) as! CustomFeedCell
        
      //  cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
    //    cell.main_image.image = UIImage(named: "\(imageArray[indexPath.row]).jpg")
        
        return cell
    }
    
    
    func configureTableView() {
        mainFeed.rowHeight = UITableView.automaticDimension
        mainFeed.estimatedRowHeight = 400
        
    }
    
    
    
    
    
    
    
    
}

