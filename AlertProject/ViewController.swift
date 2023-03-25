//
//  ViewController.swift
//  AlertProject
//
//  Created by Fatih Zoroğlu on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordText2: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked action
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true,  completion: nil)
        */
        if userNameText.text == "" {
            myAlert(messsage: "Username not found!", title: "Error!");
        }else if passwordText.text == "" || passwordText2.text == "" {
            myAlert(messsage: "Text your password!", title: "Error!")
        }else if passwordText.text != passwordText2.text {
            myAlert(messsage: "Passwords don't match!", title: "Error!")
        }else{
            myAlert(messsage: "Sign Up is ok!", title: "Success")
        }
    }
    
    func myAlert(messsage: String, title: String){
        let alert = UIAlertController(title: title, message: messsage, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked action
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true,  completion: nil)
    }
    
}

