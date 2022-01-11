//
//  HowAppWorksViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 11/01/22.
//

import UIKit

class HowAppWorksViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var SkipButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.MainViewSetup()
        self.SkipButtonSetup()
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func SkipButtonSetup() {
        self.SkipButtonOutlet.layer.cornerRadius = 30
        self.SkipButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func SkipButton(_ sender: UIButton) {
        sender.pulsate()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddSocialLinksViewController") as! AddSocialLinksViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func PlayButton(_ sender: UIButton) {
        sender.pulsate()
    }

}
