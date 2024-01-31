//
//  Menu.swift
//  Chef Meow
//
//  Created by Yuhan on 9/24/23.
//

import UIKit

class Menu: NSObject {
    var dishes = [menuDish]()
    var date = ""
    
    init(dishes: [menuDish], date: String) {
        self.dishes = dishes
        self.date = date
    }
}
