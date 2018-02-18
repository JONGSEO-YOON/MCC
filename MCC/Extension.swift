//
//  Extension.swift
//  MCC
//
//  Created by 윤종서 on 2018. 1. 29..
//  Copyright © 2018년 MCC. All rights reserved.
//
import UIKit



extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}

// check current viewcontroller
extension UIApplication
{
    class func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController?
    {
        if let nav = base as? UINavigationController
        {
            let top = topViewController(nav.visibleViewController)
            return top
        }
        
        if let tab = base as? UITabBarController
        {
            if let selected = tab.selectedViewController
            {
                let top = topViewController(selected)
                return top
            }
        }
        
        if let presented = base?.presentedViewController
        {
            let top = topViewController(presented)
            return top
        }
        return base
    }
}

class bookObject : NSObject {
    var name : NSString!
    var owner: NSString!
    var ownerUid : NSString!
    var bookState : Int!
    var score : Float!
    var scoreParti : Int!
    var author : NSString!
    var evaluation = Array<String>()
}

class userObject : NSObject {
    var name : NSString!
    var phoneNum : NSString!
    var status : NSString!
    var coin : Int!
    var borrowNum : Int!
    var lendNum : Int!
}
