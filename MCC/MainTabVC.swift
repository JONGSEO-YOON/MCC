//
//  MainTabVC.swift
//  MCC
//
//  Created by 윤종서 on 2018. 1. 29..
//  Copyright © 2018년 MCC. All rights reserved.
//

import UIKit

class MainTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.unselectedItemTintColor = UIColor.rgb(red: 225, green: 225, blue: 225)
        tabBar.tintColor = UIColor.rgb(red: 11, green: 17, blue: 45)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
