//
//  MenuBackButton.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-05.
//

import UIKit

class MenuBackButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backButtonSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backButtonSetup()
    }
    
    fileprivate func backButtonSetup() {
        tintColor = .white
        setImage(UIImage(systemName: "chevron.left"), for: .normal)
        setPreferredSymbolConfiguration(.init(pointSize: 30, weight: .medium), forImageIn: .normal)
    }
}
