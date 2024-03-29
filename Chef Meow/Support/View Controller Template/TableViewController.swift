//
//  TableViewController.swift
//  Chef Meow
//
//  Created by Yuhan on 8/31/23.
//

import UIKit
import Firebase

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.right.doc.on.clipboard"), style: .plain, target: self, action: #selector(logOut))
    }
    
    @objc func logOut() {
        let ac = UIAlertController(title: "Log out", message: "Are you sure you want to log out?", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Sure", style: .default, handler: { [weak self] action in
            self?.doLogOut()
        }))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(ac, animated: true)
    }
    
    func doLogOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("Error when log out")
        }
        
        let defaults = UserDefaults.standard
        defaults.setValue(false, forKey: "isSignIn")
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "LobbyViewController") as! LobbyViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    // MARK: Loader
    func loader() -> UIAlertController {
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.large
        loadingIndicator.startAnimating()
        
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true)
        return alert
    }
    
    func stopLoader(loader : UIAlertController) {
        DispatchQueue.main.async {
            loader.dismiss(animated: true, completion: nil)
        }
    }
}

