//
//  Order.swift
//  Chef Meow
//
//  Created by Yuhan on 9/24/23.
//

import UIKit

class Order: NSObject {
    var orders = [orderedDish]()
    var id = ""
    var total = 0.0 {
        didSet {
            self.total = round(self.total * 100)/100
        }
    }
    var pickUpTime = ""
    
    init(orders: [orderedDish], id: String, total: Double, pickUpTime: String) {
        self.orders = orders
        self.id = id
        self.total = total
        self.pickUpTime = pickUpTime
    }
}
