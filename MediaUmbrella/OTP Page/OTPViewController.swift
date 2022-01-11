//
//  OTPViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 11/01/22.
//

import UIKit

class OTPViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var MobileNumberLbl: UILabel!
    @IBOutlet weak var VerifyButtonOutlet: UIButton!
    
    @IBOutlet weak var otp1: UITextField!
    @IBOutlet weak var otp2: UITextField!
    @IBOutlet weak var otp3: UITextField!
    @IBOutlet weak var otp4: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.MainViewSetup()
        self.VerifyButtonSetup()
        self.OTPSetup()
        self.OTPBorderSetup()
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    func OTPSetup() {
        
        otp1.delegate = self
        otp2.delegate = self
        otp3.delegate = self
        otp4.delegate = self
        //createUI()
        otp1.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        otp2.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        otp3.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        otp4.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
    }
    
    func OTPBorderSetup() {
        self.otp1.layer.borderColor = UIColor.systemGreen.cgColor
        self.otp1.layer.borderWidth = 1
        self.otp1.layer.cornerRadius = 10
        self.otp1.clipsToBounds = true
        
        self.otp2.layer.borderColor = UIColor.systemGreen.cgColor
        self.otp2.layer.borderWidth = 1
        self.otp2.layer.cornerRadius = 10
        self.otp2.clipsToBounds = true
        
        self.otp3.layer.borderColor = UIColor.systemGreen.cgColor
        self.otp3.layer.borderWidth = 1
        self.otp3.layer.cornerRadius = 10
        self.otp3.clipsToBounds = true
        
        self.otp4.layer.borderColor = UIColor.systemGreen.cgColor
        self.otp4.layer.borderWidth = 1
        self.otp4.layer.cornerRadius = 10
        self.otp4.clipsToBounds = true
    }
    
    @objc func textFieldDidChange(textField: UITextField){
        let text = textField.text?.count
        if text! >= 1{
            switch textField{
            case otp1:
                otp2.becomeFirstResponder()
            case otp2:
                otp3.becomeFirstResponder()
            case otp3:
                otp4.becomeFirstResponder()
            case otp4:
                otp4.resignFirstResponder()
            default:
                break
            }
        }
    }
    
    func VerifyButtonSetup() {
        self.VerifyButtonOutlet.layer.cornerRadius = 30
        self.VerifyButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Verify(_ sender: UIButton) {
        sender.pulsate()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HowAppWorksViewController") as! HowAppWorksViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK:- TEXTFILED DELGATES
extension OTPViewController : UITextFieldDelegate{
    func textFieldShouldReturnSingle(_ textField: UITextField , newString : String){
        if ((textField.text?.characters.count)! < 1  && newString.characters.count > 0){
            let nextTag = textField.tag + 1;
            // get next responder
            let nextResponder = textField.superview?.viewWithTag(nextTag);
            textField.text = newString;
            
            if (nextResponder == nil){
                textField.resignFirstResponder()
            }
            nextResponder?.becomeFirstResponder();
            // return false;
        }
        else if ((textField.text?.characters.count)! >= 1  && newString.characters.count == 0){
            // on deleting value from Textfield
            let previousTag = textField.tag - 1;
            // get next responder
            var previousResponder = textField.superview?.viewWithTag(previousTag);
            if (previousResponder == nil){
                previousResponder = textField.superview?.viewWithTag(1);
            }
            textField.text = "";
            previousResponder?.becomeFirstResponder();
            // return false;
        }
       
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newString = ((textField.text)! as NSString).replacingCharacters(in: range, with: string)
        let newLength = newString.characters.count
        if newLength == 1 {
            textFieldShouldReturnSingle(textField , newString : newString)
            return false
        }else if newLength >= 1{
            return false
        }else if newLength == 0{
            textFieldShouldReturnSingle(textField , newString : newString)
            return false
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

