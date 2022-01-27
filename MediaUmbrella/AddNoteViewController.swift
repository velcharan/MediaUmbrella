//
//  AddNoteViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 24/01/22.
//

import UIKit
import SideMenu

class AddNoteViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var SaveButtonOutlet: UIButton!
    @IBOutlet weak var AddNoteTitle: UITextField!
    @IBOutlet weak var AddDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        self.MainViewSetup()
        self.TextFieldSetup()
        self.ButtonSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    func TextFieldSetup() {
        self.AddNoteTitle.layer.borderColor = UIColor.systemGreen.cgColor
        self.AddNoteTitle.layer.borderWidth = 1
        self.AddNoteTitle.layer.cornerRadius = 10
        self.AddNoteTitle.clipsToBounds = true
        
        self.AddDescription.layer.borderColor = UIColor.systemGreen.cgColor
        self.AddDescription.layer.borderWidth = 1
        self.AddDescription.layer.cornerRadius = 10
        self.AddDescription.clipsToBounds = true
    }
    
    func ButtonSetup() {
        self.SaveButtonOutlet.layer.cornerRadius = 30
        self.SaveButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    @IBAction func menuTapped(_sender:Any){
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }

}
