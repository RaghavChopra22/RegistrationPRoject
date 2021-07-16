//
//  Constant.swift
//  RegistrationPRoject
//
//  Created by Raghav Chopra on 16/07/21.
//

import Foundation
import UIKit

let appName = "RegistrationApp"
let failureMessage = "Unable to connect to Network ! Please try again"


func alertMessage(Message: String, ViewControllerName: UIViewController){
    let alert = UIAlertController(title: appName, message: Message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    ViewControllerName.present(alert, animated: true, completion: nil)
}

func isValidEmailAddress(emailAddressString: String) -> Bool {
    var returnValue = true
    let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    
    do {
        let regex = try NSRegularExpression(pattern: emailRegEx)
        let nsString = emailAddressString as NSString
        let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
        
        if results.count == 0
        {
            returnValue = false
        }
        
    } catch let error as NSError {
        print("invalid regex: \(error.localizedDescription)")
        returnValue = false
    }
    
    return  returnValue
}
