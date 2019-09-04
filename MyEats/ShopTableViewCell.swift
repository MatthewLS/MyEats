//
//  ShoppTableViewCell.swift
//  MyEats
//
//  Created by Matthew Stephens on 9/1/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit
import MapKit

class ShopTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shopPrice: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
