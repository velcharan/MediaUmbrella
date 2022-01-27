//
//  AddPostViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 24/01/22.
//

import UIKit

class AddPostViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var PostButtonOutlet: UIButton!
    @IBOutlet weak var ScheduleButtonOutlet: UIButton!
    @IBOutlet weak var AddPostTitle: UITextField!
    @IBOutlet weak var AddDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        self.MainViewSetup()
        TextFieldSetup()
        ButtonSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func TextFieldSetup() {
        self.AddPostTitle.layer.borderColor = UIColor.systemGreen.cgColor
        self.AddPostTitle.layer.borderWidth = 1
        self.AddPostTitle.layer.cornerRadius = 10
        self.AddPostTitle.clipsToBounds = true
        
        self.AddDescription.layer.borderColor = UIColor.systemGreen.cgColor
        self.AddDescription.layer.borderWidth = 1
        self.AddDescription.layer.cornerRadius = 10
        self.AddDescription.clipsToBounds = true
    }
    
    func ButtonSetup() {
        self.ScheduleButtonOutlet.layer.cornerRadius = 30
        self.ScheduleButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
        
        self.PostButtonOutlet.layer.cornerRadius = 30
        self.PostButtonOutlet.applyGradient(colors: [UIColor.systemYellow.cgColor, UIColor.systemGreen.cgColor])
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    @IBAction func BackBtn(_sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

}
