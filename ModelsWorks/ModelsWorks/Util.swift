//
//  Util.swift
//  ModelsWorks
//
//  Created by Dewesh on 1/31/17.
//  Copyright © 2017 Dewesh. All rights reserved.
//


import UIKit

class Util: NSObject {
    //MARK: User Defaults
    
    class func saveDataToUserDefaults(_ data: AnyObject, key: String) {
        UserDefaults.standard.set(data, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    
    
    class func getUserDefaults(_ key : String)->AnyObject? {
        return UserDefaults.standard.object(forKey: key) as AnyObject?
    }
    
    class func removeUserData(_ key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }
}
