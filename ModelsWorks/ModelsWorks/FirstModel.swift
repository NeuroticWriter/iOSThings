//
//  FirstModel.swift
//  ModelsWorks
//
//  Created by Dewesh on 1/31/17.
//  Copyright © 2017 Dewesh. All rights reserved.
//
import UIKit
import SwiftyJSON

class FirstModel: NSObject {
    
    var appUserID       = ""
    var token           = ""
    var city            = ""
    var countryName     = ""
    var dob             = ""
    var email           = ""
    var firstName       = ""
    var lastName        = ""
    
    
    
    fileprivate static var privateShared : FirstModel?
    
    class func sharedUser() -> FirstModel {
        guard let shared = privateShared else {
            privateShared = FirstModel()
            return privateShared!
        }
        return shared
    }
    
    fileprivate override init() {
        
        if let userDa = Util.getUserDefaults("AnyKey") {
            
            let userData            = JSON(userDa)
            
            self.appUserID          = userData["appUserID"].stringValue
            self.token              = userData["token"].stringValue
            self.city               = userData["city"].stringValue
            self.countryName        = userData["countryName"].stringValue
            self.email              = userData["email"].stringValue
            self.firstName          = userData["firstName"].stringValue
            self.lastName           = userData["lastName"].stringValue
        }
        
    }
    
    func getFullName() ->String {
        return "\(self.firstName) \(self.lastName)"
    }
    
    
    
    class func destroy() {
        privateShared = nil
    }
    
    override var description: String {
        return "appUserID:\(self.appUserID), city:\(self.city), countryName:\(self.countryName), dob:\(self.dob), email:\(self.email), firstName:\(self.firstName), lastName:\(self.lastName)\n"
    }
    
    
    
    
    
}
