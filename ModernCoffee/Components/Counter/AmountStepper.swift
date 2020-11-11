//
//  AmountStepper.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-05.
//

import UIKit

class AmountStepper: UIStepper {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        stepperSetup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        stepperSetup()
    }
    
    fileprivate func stepperSetup() {
        backgroundColor = .darkGray
    }
}
