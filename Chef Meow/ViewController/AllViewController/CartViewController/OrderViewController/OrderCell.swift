//
//  OrderCell.swift
//  Chef Meow
//
//  Created by Yuhan on 9/24/23.
//

import UIKit
import Firebase

class OrderCell: UITableViewCell {
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var wrapper: UIView!
    @IBOutlet weak var totalLabel: UILabel!
    
    var order: Order? {
        didSet {
            if let order = order {
                var info = Utilities.reformatPickUpTime(pickUpTime: order.pickUpTime)
                info += ", #\(order.id)"
                infoLabel.text = info
                
                totalLabel.text = "$\(order.total)"
            }
        }
    }
}
