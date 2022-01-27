//
//  ProfileViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 24/01/22.
//

import UIKit
import SideMenu

class ProfileViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        self.MainViewSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    @IBAction func menuTapped(_sender:Any){
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    @IBAction func EditProfile(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EditProfileViewController") as! EditProfileViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Membership(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MemberShipRenewalViewController") as! MemberShipRenewalViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func SocialLink(_sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SocialLinksViewController") as! SocialLinksViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
