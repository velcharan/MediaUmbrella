//
//  ContactUsViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 17/01/22.
//

import UIKit

class ContactUsViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var reasonTextField: UITextField!
    @IBOutlet weak var SubmitButtonOutlet: UIButton!
    @IBOutlet weak var MessageTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.MainViewSetup()
        self.TextFieldSetup()
        self.ButtonSetup()
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    func TextFieldSetup() {
        self.EmailTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.EmailTextField.layer.borderWidth = 1
        self.EmailTextField.layer.cornerRadius = 10
        self.EmailTextField.clipsToBounds = true
        
        self.reasonTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.reasonTextField.layer.borderWidth = 1
        self.reasonTextField.layer.cornerRadius = 10
        self.reasonTextField.clipsToBounds = true
        
        self.MessageTextView.layer.borderColor = UIColor.systemGreen.cgColor
        self.MessageTextView.layer.borderWidth = 1
        self.MessageTextView.layer.cornerRadius = 10
        self.MessageTextView.clipsToBounds = true
    }
    
    func ButtonSetup() {
        self.SubmitButtonOutlet.layer.cornerRadius = 30
        self.SubmitButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
