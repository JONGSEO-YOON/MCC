//
//  LibraryVC.swift
//  MCC
//
//  Created by 윤종서 on 2018. 1. 29..
//  Copyright © 2018년 MCC. All rights reserved.
//

import UIKit

class LibraryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var inTableView: UITableView!
    @IBOutlet weak var outTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Library"
        
        inTableView.delegate = self
        inTableView.dataSource = self
        
        outTableView.delegate = self
        outTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if( tableView == outTableView ) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "outCell", for: indexPath)

            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "inCell", for: indexPath)
           
            let name = cell.contentView.viewWithTag(1) as! UILabel
            
            return cell
        }
      
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    

}
