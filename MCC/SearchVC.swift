//
//  SearchVC.swift
//  MCC
//
//  Created by 윤종서 on 2018. 1. 29..
//  Copyright © 2018년 MCC. All rights reserved.
//

import UIKit
import FirebaseAuth

class SearchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Search"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        /* logout Method
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }*/
    }
    


}
