//
//  TitleLabel.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class TitleLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        titleLabelSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabelSetup()
    }
    
    fileprivate func titleLabelSetup() {
        text = "MODERN COFFEE"
        textColor = .black
        textAlignment = .left
        font = UIFont.systemFont(ofSize: 30, weight: .ultraLight)
    }
}
