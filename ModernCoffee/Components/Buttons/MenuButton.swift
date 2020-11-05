//
//  MenuButton.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class MenuButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        menuSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        menuSetup()
    }
    
    fileprivate func menuSetup() {
        backgroundColor = UIColor(red: 85/255.0, green: 85/255.0, blue: 85/255.0, alpha: 1.0)
        layer.cornerRadius = 30
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 4
        tintColor = .white
        setImage(UIImage(systemName: "text.alignleft"), for: .normal)
        setPreferredSymbolConfiguration(.init(pointSize: 20, weight: .medium), forImageIn: .normal)
    }
}
