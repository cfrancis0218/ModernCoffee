//
//  ModernCoffee+Style.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class ModernCoffee_Style: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modernCoffeeStyle()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        modernCoffeeStyle()
    }
    
    fileprivate func modernCoffeeStyle() {
        backgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 242/255.0, alpha: 1.0)
    }
}
