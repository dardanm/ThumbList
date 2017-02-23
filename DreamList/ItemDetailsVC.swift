//
//  ItemDetailsVC.swift
//  DreamList
//
//  Created by Dardan Meha on 2/22/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var userTitleEntryField: UITextField!
    
    @IBOutlet weak var userDate: UILabel!
    @IBOutlet weak var userNotesEntryField: UITextView!
    
    var itemToEdit: Item?
    var imagePicker: UIImagePickerController!
    
    // Hide status bar
    override var prefersStatusBarHidden : Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()


        if let topItem = self.navigationController?.navigationBar.topItem{
            
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
            
        }
        
        if itemToEdit != nil {
            loadItemData()
        }
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self

        
    }

    
    @IBAction func userSaveNotes(_ sender: Any) {
        
        var item: Item!
        
        // image entity
        let picture = Image(context: context)
        picture.image = thumbImgNotes.image
        

        if itemToEdit == nil {
            
            item = Item(context: context)
            
        } else {
            item = itemToEdit
        }
        
        item.toImage = picture
        
        if let title = userTitleEntryField.text {
            item.title = title
        }
        if let userNotes = userNotesEntryField.text {
            item.userNotes = userNotes
        }
        
        // Save Date
        if userDate.text != nil {
            
        item.created = item.created
        // Converting date created value to MM/DD/YYYY
        let temp = item.created
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy, h:mm a"
        let userDater = formatter.string(from: temp as! Date)
        
        userDate.text = userDater
        }
            
        ad.saveContext()
    }
    
    
    func loadItemData(){
        
        if let item = itemToEdit {
            userTitleEntryField.text = item.title
            userNotesEntryField.text = item.userNotes
            thumbImgNotes.image = item.toImage?.image as? UIImage
            
            // Show date on each notes entry
            // Converting date created value to MM/DD/YYYY
            let temp = item.created
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/dd/yyyy, h:mm a"
            let userDater = formatter.string(from: temp as! Date)
            
            userDate.text = "\(userDater)"
            
        }
        
    }
    
    // delete notes page
    @IBAction func deleteInfoButton(_ sender: Any) {
        
        if itemToEdit != nil {
            context.delete(itemToEdit!)
            ad.saveContext()
        }
        
        // Go back to controller after deleting notes
        _ = navigationController?.popViewController(animated: true)
        
    }
    
    // Upload image
    
    
    @IBOutlet weak var thumbImgNotes: UIImageView!
    @IBAction func uploadImage(_ sender: UIButton) {
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    // Pick image from user's photo library
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {

        if let  img = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
        thumbImgNotes.image = img
        self.dismiss(animated: true, completion: nil)
            
        }
    
    }


}
