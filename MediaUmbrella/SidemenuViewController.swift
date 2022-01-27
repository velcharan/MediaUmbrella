//
//  SidemenuViewController.swift
//  MediaUmbrella
//
//  Created by velcharan sridhar on 24/01/22.
//

import UIKit

class SidemenuViewController: UIViewController {

    @IBOutlet weak var sideMenuTBView: UITableView!
    //MARK: Outlets
    @IBOutlet weak var MainViewCorner: UIView!
    
    var titleNames = ["Home",
                      "Schedule Post",
                      "Membership",
                      "Notification",
                      "My Profile",
                      "Settings",
                      "About Us",
                      "Contact Us",
                      "Logout"]
    
    var TitleImages = [UIImage(named: "Group 9330"),
                       UIImage(named: "Group 9331"),
                       UIImage(named: "Group 9332"),
                       UIImage(named: "Group 9333"),
                       UIImage(named: "Group 9334"),
                       UIImage(named: "Group 9335"),
                       UIImage(named: "Group 9336"),
                       UIImage(named: "Group 9337"),
                       UIImage(named: "Group 9260")]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.MainViewSetup()
    }
    
    func MainViewSetup() {
        self.MainViewCorner.roundCorners(CornersRadius: 20)
    }
    
   

}

@available(iOS 13.0, *)
extension SidemenuViewController:UITableViewDelegate,UITableViewDataSource{
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sideMenuTBView.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell", for: indexPath) as! SideMenuTableViewCell
        cell.listOfLabels.text = titleNames[indexPath.row]
        cell.listOfImages.image = TitleImages[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 1{
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddNoteViewController") as! AddNoteViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 2{
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PackagesViewController") as! PackagesViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 3{

        }
        
        if indexPath.row == 4{
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 5{
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 6{
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutUsViewController") as! AboutUsViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 7 {
            let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContactUsViewController") as! ContactUsViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if indexPath.row == 8 {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
           
    }
    
}



