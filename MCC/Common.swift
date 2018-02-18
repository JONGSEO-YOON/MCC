//
//  Common.swift
//  MCC
//
//  Created by 윤종서 on 2018. 2. 16..
//  Copyright © 2018년 MCC. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

var databaseRef : DatabaseReference! = Database.database().reference()
var userUid = Auth.auth().currentUser?.uid
var userEmail : String!
var topController = UIApplication.topViewController()

var userData = userObject()

func userDataDicToObject(userDictionary: NSDictionary) -> userObject {
    var userObj = userObject()
    
    userObj.borrowNum = userDictionary.value(forKey: "borrowNum") as! Int
    userObj.coin = userDictionary.value(forKey: "coin") as! Int
    userObj.name = userDictionary.value(forKey: "name") as! NSString
    userObj.phoneNum = userDictionary.value(forKey: "phoneNum") as! NSString
    userObj.status = userDictionary.value(forKey: "status") as! NSString
    userObj.lendNum = userDictionary.value(forKey: "lendNum") as! Int

    return userObj
    
}


