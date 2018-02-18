//
//  ProfileRegisterVC.swift
//  MCC
//
//  Created by 윤종서 on 2018. 2. 16..
//  Copyright © 2018년 MCC. All rights reserved.
//

import UIKit
import FirebaseAuth

class ProfileRegisterVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    

    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var statusTf: UITextField!
    @IBOutlet weak var phoneNumTf: UITextField!
    var pickOption = ["OB", "BA", "Acting"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var pickerView = UIPickerView()
        
        pickerView.delegate = self
        
        statusTf.inputView = pickerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statusTf.text = pickOption[row]
    }
    @IBAction func registerBtnClick(_ sender: Any) {
        if( nameTf.text != "" && statusTf.text != "" && phoneNumTf.text != "" ) {
            let userData = ["name" : nameTf.text ?? "", "status" : statusTf.text ?? "", "phoneNum" : phoneNumTf.text ?? "", "coin" : 1] as [String : Any]
            
            databaseRef.child("userData").child((Auth.auth().currentUser?.uid)!).updateChildValues(userData)
            
            self.dismiss(animated: true, completion: nil)
            
            
        } else {
            let alertController = UIAlertController(title: "모든 내용을 채워주세요.",message: "", preferredStyle: UIAlertControllerStyle.alert)
        
            let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            
            alertController.addAction(cancelButton)
            
            self.present(alertController,animated: true,completion: nil)
        }
    }
    
}
