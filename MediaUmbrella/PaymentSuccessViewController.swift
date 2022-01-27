//
//  PaymentSuccessViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 17/01/22.
//

import UIKit

class PaymentSuccessViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var ButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.MainViewSetup()
        self.ButtonSetup()
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    func ButtonSetup() {
        self.ButtonOutlet.layer.cornerRadius = 30
        self.ButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Home(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
