//
//  AuthVC.swift
//  MCC
//
//  Created by 윤종서 on 2018. 2. 16..
//  Copyright © 2018년 MCC. All rights reserved.
//

import UIKit
import GoogleSignIn
import FirebaseAuth

class AuthVC: UIViewController, GIDSignInUIDelegate {
    
    @IBOutlet weak var signInButton: GIDSignInButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance().uiDelegate = self
        //GIDSignIn.sharedInstance().signIn()
        
        signInButton.contentMode = UIViewContentMode.center
        signInButton.addTarget(self, action: #selector(fuck), for: .touchUpInside)
        
        
    }
    
    @objc func fuck() {
       let blackView = UIView()
        blackView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        blackView.backgroundColor = UIColor.rgb(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        let activityIndicatoer = UIActivityIndicatorView()
        activityIndicatoer.color = UIColor.white
        activityIndicatoer.center = blackView.center
        
        blackView.addSubview(activityIndicatoer)
        
        activityIndicatoer.startAnimating()
        
        view.addSubview(blackView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        topController = UIApplication.topViewController()
    }
    


}
