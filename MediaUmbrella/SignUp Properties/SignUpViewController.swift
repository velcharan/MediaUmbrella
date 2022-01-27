//
//  SignUpViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 10/01/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var SignUpViewCorner: UIView!
    @IBOutlet weak var FullNameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var MobileNumberTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var RePasswordTextField: UITextField!
    @IBOutlet weak var SignUPButtonOutlet: UIButton!
    
    @IBOutlet weak var IndividualImage: UIButton!
    @IBOutlet weak var CompanyImage: UIButton!
    @IBOutlet weak var BothImage: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.MainViewSetup()
        self.TextFieldSetup()
        self.SignUpButtonSetup()
    }
    
    func MainViewSetup() {
        self.SignUpViewCorner.roundCorners(CornersRadius: 20)
    }
    
    func TextFieldSetup() {
        self.FullNameTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.FullNameTextField.layer.borderWidth = 1
        self.FullNameTextField.layer.cornerRadius = 10
        self.FullNameTextField.clipsToBounds = true
        
        self.EmailTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.EmailTextField.layer.borderWidth = 1
        self.EmailTextField.layer.cornerRadius = 10
        self.EmailTextField.clipsToBounds = true
        
        self.MobileNumberTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.MobileNumberTextField.layer.borderWidth = 1
        self.MobileNumberTextField.layer.cornerRadius = 10
        self.MobileNumberTextField.clipsToBounds = true
        
        self.PasswordTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.PasswordTextField.layer.borderWidth = 1
        self.PasswordTextField.layer.cornerRadius = 10
        self.PasswordTextField.clipsToBounds = true
        
        self.RePasswordTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.RePasswordTextField.layer.borderWidth = 1
        self.RePasswordTextField.layer.cornerRadius = 10
        self.RePasswordTextField.clipsToBounds = true
    }
    
    func SignUpButtonSetup() {
        self.SignUPButtonOutlet.layer.cornerRadius = 30
        self.SignUPButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        sender.pulsate()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OTPViewController") as! OTPViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Term_condition(_ sender: UIButton) {
        sender.pulsate()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TermsConditionsViewController") as! TermsConditionsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func IndividualBtn(_ sender: UIButton) {
        IndividualImage.setImage(UIImage(named: "Group 9297"), for: .normal)
        CompanyImage.setImage(UIImage(named: "Ellipse 1041"), for: .normal)
        BothImage.setImage(UIImage(named: "Ellipse 1041"), for: .normal)
    }
    
    @IBAction func CompanyBtn(_ sender: UIButton) {
        CompanyImage.setImage(UIImage(named: "Group 9297"), for: .normal)
        IndividualImage.setImage(UIImage(named: "Ellipse 1041"), for: .normal)
        BothImage.setImage(UIImage(named: "Ellipse 1041"), for: .normal)
    }
    
    @IBAction func BothBtn(_ sender: UIButton) {
        BothImage.setImage(UIImage(named: "Group 9297"), for: .normal)
        CompanyImage.setImage(UIImage(named: "Ellipse 1041"), for: .normal)
        IndividualImage.setImage(UIImage(named: "Ellipse 1041"), for: .normal)
    }
    
    
    

}
