//
//  MainVC.swift
//  DreamList
//
//  Created by Dardan Meha on 2/21/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import UIKit
import CoreData

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {
    
    // FRC works directly with core data and table view

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var fetchedResultController = NSFetchedResultsController <Item>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // set delegate and data source
        tableView.delegate = self
        tableView.dataSource = self
    
    }

    // number of rows, number of sections
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    
    func attemptFetch(){
        
        let fetchRequest: NSFetchRequest<Item> = Item.fetchRequest()
        let dateSort = NSSortDescriptor(key: "created", ascending: false)
        fetchRequest.sortDescriptors[dateSort]
        
        let controller = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: <#T##NSManagedObjectContext#>, sectionNameKeyPath: <#T##String?#>, cacheName: <#T##String?#>)
        
        
        
        
    }
    

}


















