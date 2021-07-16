//
//  SecondViewController.swift
//  RegistrationPRoject
//
//  Created by Raghav Chopra on 16/07/21.
//

import UIKit



class SecondViewController: UIViewController {

    @IBOutlet weak var lblName: UITextField!
    @IBOutlet weak var lblEmailAddress: UITextField!
    @IBOutlet weak var lblHomePhone: UITextField!
    @IBOutlet weak var lblMobilePhone: UITextField!
    @IBOutlet weak var lblZipCode: UITextField!
    @IBOutlet weak var lblAddress: UITextView!

    var name: String!
    var Email: String!
    var HomePhone: String!
    var MobilePhone: String!
    var ZipCode: String!
    var Address: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        if name != "" {
            lblName.text = name
        }else {
            lblName.text = "Not Mentioned"
        }
        if Email != "" {
            lblEmailAddress.text = Email
        }else {
            lblEmailAddress.text = "Not Mentioned"
        }
        
        if HomePhone != "" {
            lblHomePhone.text = HomePhone
        }else {
            lblHomePhone.text = "Not Mentioned"
        }
        
        if MobilePhone != "" {
            lblMobilePhone.text = MobilePhone
        }else {
            lblMobilePhone.text = "Not Mentioned"
        }
        
        if ZipCode != "" {
            lblZipCode.text = ZipCode
        }else {
            lblZipCode.text = "Not Mentioned"
        }
        
        if Address != "" {
            lblAddress.text = Address
        }else {
            lblAddress.text = "Not Mentioned"
        }


    }
    
}
