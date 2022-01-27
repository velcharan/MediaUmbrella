//
//  SettingsViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 17/01/22.
//

import UIKit

class SettingsViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.MainViewSetup()
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }

    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func privacy_Policy(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PrivacyPolicyViewController") as! PrivacyPolicyViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Terms_condition(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TermsConditionsViewController") as! TermsConditionsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
