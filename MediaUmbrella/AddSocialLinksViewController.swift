//
//  AddSocialLinksViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 11/01/22.
//

import UIKit

class AddSocialLinksViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var AddLinksButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.MainViewSetup()
        self.AddLinksButtonSetup()
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    func AddLinksButtonSetup() {
        self.AddLinksButtonOutlet.layer.cornerRadius = 30
        self.AddLinksButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func AddLinks(_ sender: UIButton) {
        sender.pulsate()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
