//
//  ItemCell.swift
//  DreamList
//
//  Created by Dardan Meha on 2/21/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var date: UILabel!
    
    
    func configureCell(item: Item){
        

        // Converting date created value to MM/DD/YYYY
        let temp = item.created
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy, h:mm a"
        let stringDate = formatter.string(from: temp as! Date)
        
        title.text = item.title?.uppercased()
        //title.text = title.text?.uppercased()
        details.text = item.userNotes
        date.text = "\(stringDate)"
        thumbnail.image = item.toImage?.image as? UIImage
        
    }
    
}
