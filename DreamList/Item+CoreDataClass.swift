//
//  Item+CoreDataClass.swift
//  DreamList
//
//  Created by Dardan Meha on 2/21/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    
    // itilalize
    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        
        // assign current date to 'created' attribute
        self.created = NSDate()
        
    }
    
}
