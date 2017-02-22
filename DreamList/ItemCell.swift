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
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item){
        
        title.text = item.title
        price.text = "$\(item.price)"
        details.text = item.details
        
        
    }
    
}
