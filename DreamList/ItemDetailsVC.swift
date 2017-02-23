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
    
    var itemToEdit: Item?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem{
            
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
            
        }
        
        if itemToEdit != nil {
            loadItemData()
        }
        
        
    }

    
    @IBAction func userSaveNotes(_ sender: Any) {
        
        var item: Item!
        
        if itemToEdit == nil {
            
            item = Item(context: context)
            
        } else {
            item = itemToEdit
        }
        
        if let title = userTitleEntryField.text {
            item.title = title
        }
        if let userNotes = userNotesEntryField.text {
            item.userNotes = userNotes
        }

        ad.saveContext()
    }
    
    
    func loadItemData(){
        
        if let item = itemToEdit {
            userTitleEntryField.text = item.title
            userNotesEntryField.text = item.userNotes
            
            
        }
        
    }
    
    func saveInfo(){
        var item: Item!
        
        if itemToEdit == nil {
            
            item = Item(context: context)
            
        } else {
            item = itemToEdit
        }
        
        if let title = userTitleEntryField.text {
            item.title = title
        }
        if let userNotes = userNotesEntryField.text {
            item.userNotes = userNotes
        }
        
        ad.saveContext()
    }
    


}
