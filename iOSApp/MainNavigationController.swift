//
//  MainNavigationController.swift
//  TEDxBerkeley
//
//  Created by alvinwan on 2/14/15.
//  Copyright (c) 2015 TExBerkeley. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        self.navigationBar.barTintColor = UIColor(red: 230, green: 43, blue: 30, alpha: 1)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
}
