//
//  MemberShipRenewalViewController.swift
//  Pods
//
//  Created by velcharan sridhar on 24/01/22.
//

import UIKit

class MemberShipRenewalViewController: UIViewController {

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
}
