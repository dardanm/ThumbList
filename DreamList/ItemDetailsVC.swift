//
//  ItemDetailsVC.swift
//  DreamList
//
//  Created by Dardan Meha on 2/22/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import UIKit

class ItemDetailsVC: UIViewController {

    @IBOutlet weak var userTitleEntryField: UITextField!
    
    @IBOutlet weak var userNotesEntryField: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem{
            
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
            
        }
    
    }
    
    @IBAction func userSaveNotes(_ sender: Any) {
        
        let item = Item(context: context)
        
        if let title = userTitleEntryField.text {
            item.title = title
        }
        if let userNotes = userNotesEntryField.text {
            item.userNotes = userNotes
        }
        
        ad.saveContext()
        
        
    }
    


}
