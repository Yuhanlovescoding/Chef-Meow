//
//  LobbyViewController.swift
//  Chef Meow
//
//  Created by Yuhan on 8/27/23.
//

import UIKit

class LobbyViewController: UIViewController {
  
    
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var logIn: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        navigationController?.setToolbarHidden(true, animated: true)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.styleFilledButton(logIn)
        Utilities.styleHollowButton(signUp)
        
        
        let defaults = UserDefaults.standard
        if defaults.bool(forKey: "isSignIn") == true {
            let storyBoard = UIStoryboard(name: "TabBar", bundle: nil)
            let vc = storyBoard.instantiateViewController(identifier: "AllViewController") as! AllViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        let view1 = UIView(frame: view.bounds)
        view1.backgroundColor = UIColor(red: 0xf5/255, green: 0xe7/255, blue: 0xd1/255, alpha: 1)
        self.view.addSubview(view1)
        self.view.sendSubviewToBack(view1)
    }
        
    
    
    @IBAction func logInTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "LogInViewController") as! LogInViewController
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
}
