//
//  PaymentViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 25/01/22.
//

import UIKit

class PaymentViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var PAYButtonOutlet: UIButton!
    @IBOutlet weak var CardNameTF: UITextField!
    @IBOutlet weak var CardNumberTF: UITextField!
    @IBOutlet weak var CardExpiryTF: UITextField!
    @IBOutlet weak var CardCVVTF: UITextField!
    @IBOutlet weak var CardZipCodeTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        self.MainViewSetup()
        self.ButtonSetup()
        self.TextFieldSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func ButtonSetup() {
        self.PAYButtonOutlet.layer.cornerRadius = 30
        self.PAYButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    func TextFieldSetup() {
        self.CardNameTF.layer.borderColor = UIColor.systemGreen.cgColor
        self.CardNameTF.layer.borderWidth = 1
        self.CardNameTF.layer.cornerRadius = 10
        self.CardNameTF.clipsToBounds = true
        
        self.CardNumberTF.layer.borderColor = UIColor.systemGreen.cgColor
        self.CardNumberTF.layer.borderWidth = 1
        self.CardNumberTF.layer.cornerRadius = 10
        self.CardNumberTF.clipsToBounds = true
        
        self.CardExpiryTF.layer.borderColor = UIColor.systemGreen.cgColor
        self.CardExpiryTF.layer.borderWidth = 1
        self.CardExpiryTF.layer.cornerRadius = 10
        self.CardExpiryTF.clipsToBounds = true
        
        self.CardCVVTF.layer.borderColor = UIColor.systemGreen.cgColor
        self.CardCVVTF.layer.borderWidth = 1
        self.CardCVVTF.layer.cornerRadius = 10
        self.CardCVVTF.clipsToBounds = true
        
        self.CardZipCodeTF.layer.borderColor = UIColor.systemGreen.cgColor
        self.CardZipCodeTF.layer.borderWidth = 1
        self.CardZipCodeTF.layer.cornerRadius = 10
        self.CardZipCodeTF.clipsToBounds = true
    }
    
    @IBAction func Payment(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaymentSuccessViewController") as! PaymentSuccessViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }

}
