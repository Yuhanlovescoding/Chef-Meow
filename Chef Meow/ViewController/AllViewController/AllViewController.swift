//
//  AllViewController.swift
//  Chef Meow
//
//  Created by Yuhan on 8/27/23.
//

import UIKit
import Firebase

var allMenus = [String: Menu]()
var allDishes = [String: menuDish]()
var allOrders = [String: Order]()
var todayDate = ""

class AllViewController: UITabBarController {
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get today date
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateFormat = "MMddyy"
        todayDate = formatter1.string(from: today)
    }
}
