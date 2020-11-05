//
//  FlavourLabel.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-05.
//

import UIKit

class FlavourLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        accountLabelSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        accountLabelSetup()
    }
    
    fileprivate func accountLabelSetup() {
        text = "FLAVOUR"
        textColor = .white
        textAlignment = .center
        font = UIFont.systemFont(ofSize: 20, weight: .semibold)
    }
}
