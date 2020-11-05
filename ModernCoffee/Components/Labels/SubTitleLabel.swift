//
//  SubTitleLabel.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class SubTitleLabel: UILabel {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        titleLabelSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabelSetup()
    }
    
    fileprivate func titleLabelSetup() {
        textColor = .black
        textAlignment = .right
        let underline = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlinetyle = NSAttributedString(string: "AT IT'S FINEST", attributes: underline)
        attributedText = underlinetyle
        font = UIFont.systemFont(ofSize: 25, weight: .ultraLight)
    }
}
