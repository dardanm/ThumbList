//
//  Image+CoreDataProperties.swift
//  DreamList
//
//  Created by Dardan Meha on 2/21/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image");
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toItem: Item?
    @NSManaged public var toStore: NSSet?

}

