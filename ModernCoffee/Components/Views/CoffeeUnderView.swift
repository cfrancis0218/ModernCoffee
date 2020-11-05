//
//  CoffeeUnderView.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class CoffeeUnderView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cardUnderView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cardUnderView()
    }
    
    fileprivate func cardUnderView() {
        backgroundColor = .white
        layer.cornerRadius = 30
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 15
    }
}
