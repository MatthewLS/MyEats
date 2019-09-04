//
//  Shop.swift
//  MyEats
//
//  Created by Matthew Stephens on 9/1/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Shop {
    //MARK Properties
    var name: String
    var location: String
    var price: Int?
    
    
    //MARK: Init
    init?(name: String, location: String, price: Int?){
        guard !name.isEmpty else {
            return nil
        }
        self.name = name
        self.location = location
        self.price = price
    }
    
    
    
    
    
    
    
    
}
