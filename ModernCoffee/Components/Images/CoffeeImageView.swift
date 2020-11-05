//
//  CoffeeImageView.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class CoffeeImageView: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        imageSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageSetup()
    }
    
    fileprivate func imageSetup() {
        image = #imageLiteral(resourceName: "brigitte-tohm-yRH0JI2S2KA-unsplash")
        contentMode = .scaleAspectFill
        clipsToBounds = true
        layer.cornerRadius = 30
    }
}
