//
//  PriceControll.swift
//  MyEats
//
//  Created by Matthew Stephens on 9/2/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit


class PriceControl: UIStackView {
    
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private methods
    func setupButtons() {
        //create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        //add button
        addArrangedSubview(button)
    }
}
