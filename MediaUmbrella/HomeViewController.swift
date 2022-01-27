//
//  HomeViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 24/01/22.
//

import UIKit
import SideMenu

class HomeViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    @IBOutlet weak var addPost: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        
        self.sidemenu()
        self.tabBarController?.tabBar.isHidden = false
        self.MainViewSetup()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapFunction(sender:)))
        addPost.addGestureRecognizer(tap)
    }
    
    @objc func tapFunction(sender:UITapGestureRecognizer) {
        print("tap working")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddPostViewController") as! AddPostViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
    @IBAction func fiter(_sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilterViewController") as! FilterViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func Postdetails(_sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PostDetailsViewController") as! PostDetailsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func sidemenu() {
        //sidemenu
       SideMenuManager.default.menuPresentMode = .menuSlideIn
       SideMenuManager.default.menuAnimationDismissDuration = 0.2
       SideMenuManager.default.menuAnimationPresentDuration = 0.5
       SideMenuManager.default.menuFadeStatusBar = false
       SideMenuManager.default.menuShadowRadius = 50
       SideMenuManager.default.menuShadowOpacity = 1
       SideMenuManager.default.menuDismissOnPush = true
       
       let menuVC = self.storyboard?.instantiateViewController(withIdentifier: "SidemenuViewController")
       
       let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: menuVC!)
       menuLeftNavigationController.leftSide = true
       
       SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
       
       NotificationCenter.default.addObserver(self, selector: #selector(openSideMenu), name: NSNotification.Name (rawValue: "openSideMenu"), object: nil)
    }
    
    @objc func openSideMenu ()  {
        print("sidemenu sports")
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    @IBAction func menuTapped(_sender:Any){
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }

}
