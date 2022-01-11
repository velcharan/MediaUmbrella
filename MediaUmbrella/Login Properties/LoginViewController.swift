//
//  LoginViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 10/01/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var LoginViewCorner: UIView!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var SignInButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        SetupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
         self.navigationController?.navigationBar.isHidden = true
        
    }
    
    func SetupUI() {
        //MARK: UIView for cornerRadius
        self.LoginViewCorner.roundCorners(CornersRadius: 20)
        //MARK: TextField For Border Color
        self.EmailTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.EmailTextField.layer.borderWidth = 1
        self.EmailTextField.layer.cornerRadius = 10
        self.EmailTextField.clipsToBounds = true
        self.PasswordTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.PasswordTextField.layer.borderWidth = 1
        self.PasswordTextField.layer.cornerRadius = 10
        self.PasswordTextField.clipsToBounds = true
        //MARK: Button for gradient color
        self.SignInButtonOutlet.layer.cornerRadius = 30
        self.SignInButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func SignIn(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func ForgotPassword(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func SignUP(_ sender: UIButton) {
        sender.pulsate()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}

