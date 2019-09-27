//
//  ViewController.swift
//  trollFeed
//
//  Created by M on 25/09/2019.
//  Copyright © 2019 M. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


// MAIN
   
    @IBAction func addButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "addNewImageSegue", sender: self)
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

    
//  ILOŚĆ KOMÓREK FEEDCELL, DOCELOWO MA ZWRACAĆ WIELKOŚĆ BAZY DANYCH (EWENTUALNIE STRONY, WTEDY ZWRACA ILOŚĆ KOMÓREK NA STRONIE NP. 10 
    
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

