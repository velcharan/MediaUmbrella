//
//  FilterViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 12/01/22.
//

import UIKit

class FilterViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var DateTextField: UITextField!
    @IBOutlet weak var FilterButtonOutlet: UIButton!

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
        self.DateTextField.layer.borderColor = UIColor.systemGreen.cgColor
        self.DateTextField.layer.borderWidth = 1
        self.DateTextField.layer.cornerRadius = 10
        self.DateTextField.clipsToBounds = true
    }
    
    func ButtonSetup() {
        self.FilterButtonOutlet.layer.cornerRadius = 30
        self.FilterButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Filter(_ sender: UIButton) {
        sender.pulsate()
    }

}
