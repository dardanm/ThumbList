//
//  ItemDetailsVC.swift
//  DreamList
//
//  Created by Dardan Meha on 2/22/17.
//  Copyright © 2017 Dardan Meha. All rights reserved.
//

import UIKit

class ItemDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem{
            
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
            
        }
    
    }


}
