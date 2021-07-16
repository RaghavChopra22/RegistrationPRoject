//
//  ViewController.swift
//  RegistrationPRoject
//
//  Created by Raghav Chopra on 16/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtHomePhone: UITextField!
    @IBOutlet weak var txtMobilePhone: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtZipCode: UITextField!
    @IBOutlet weak var txtAddress: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func btnSubmit(sender: UIButton){
     
        if txtName.text == "" || txtEmail.text == "" {
            alertMessage(Message: "Please check Name/Email can not be blank..!", ViewControllerName: self)
            return
        }
        if txtName.text!.count > 25 {
            alertMessage(Message: "Name can not be exceeded than 25 characters..!", ViewControllerName: self)
            return
        }
        if txtEmail.text!.count > 25 {
            alertMessage(Message: "Name can not be exceeded than 25 characters..!", ViewControllerName: self)
            return
        }
        if !isValidEmailAddress(emailAddressString: txtEmail.text!) {
            alertMessage(Message: "Please enter valid E-mail Address..!", ViewControllerName: self)
            return
        }
        if txtHomePhone.text!.count > 10 {
            alertMessage(Message: "Home Phone can not be more than 10 characters..!", ViewControllerName: self)
            return
        }
        if txtMobilePhone.text == "" && txtHomePhone.text == "" {
            alertMessage(Message: "Please enter atleast one number can not be blank..!", ViewControllerName: self)
            return
        }else{
            if txtMobilePhone.text! != "" {
                if txtMobilePhone.text!.count != 10 {
                    alertMessage(Message: "Mobile Phone should be of 10 charatcers..!", ViewControllerName: self)
                    return
                }
            }
        }
        if txtZipCode.text!.count > 6 {
            alertMessage(Message: "Zip Code can not be more than 6 characters..!", ViewControllerName: self)
            return
        }
        if txtAddress.text!.count > 100 {
            alertMessage(Message: "Address can not ne of more than 100 charatcers..!", ViewControllerName: self)
            return
        }

        let destVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        destVC.name = txtName.text!
        destVC.Email = txtEmail.text!
        destVC.HomePhone = txtHomePhone.text!
        destVC.MobilePhone = txtMobilePhone.text!
        destVC.ZipCode = txtZipCode.text!
        destVC.Address = txtAddress.text!

        self.navigationController?.pushViewController(destVC, animated: true)

    }
    

}

