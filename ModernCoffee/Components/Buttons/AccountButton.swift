//
//  AccountButton.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class AccountButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        accountSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        accountSetup()
    }
    
    fileprivate func accountSetup() {
        
        tintColor = .white
        setImage(UIImage(systemName: "person"), for: .normal)
        setPreferredSymbolConfiguration(.init(pointSize: 30, weight: .medium), forImageIn: .normal)
    }
    
    
}
