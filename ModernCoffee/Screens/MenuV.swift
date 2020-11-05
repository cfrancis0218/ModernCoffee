//
//  MenuVC.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class MenuV: UIView {
    
    
    let accountButton = AccountButton()
    let flavourButton = FlavourButton()
    let accountLabel = AccountLabel()
    let flavourLabel = FlavourLabel()
    let backButton = MenuBackButton()
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewMenuStyleSetup()
        buttonsToView()
        buttonsAction()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewMenuStyleSetup()
        buttonsToView()
        buttonsAction()
    }
    
    fileprivate func buttonsAction() {
        backButton.addTarget(self, action: #selector(returnMenu), for: .touchUpInside)
    }
    
    @objc func returnMenu() {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseOut, animations: ({
            self.alpha = 0.0
            self.center.x += 50
        }),
        completion: nil)
    }
    
    fileprivate func viewMenuStyleSetup() {
        isHidden = true
        alpha = 0.5
        backgroundColor = UIColor(red: 155/255.0, green: 164/255.0, blue: 180/255.0, alpha: 1.0)
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 3
    }
    
    fileprivate func buttonsToView() {
        addSubview(flavourButton)
        addSubview(accountButton)
        addSubview(backButton)
        addSubview(accountLabel)
        addSubview(flavourLabel)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        accountButton.translatesAutoresizingMaskIntoConstraints = false
        flavourButton.translatesAutoresizingMaskIntoConstraints = false
        accountLabel.translatesAutoresizingMaskIntoConstraints = false
        flavourLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            backButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            
            accountButton.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            accountButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            accountButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            
            accountLabel.topAnchor.constraint(equalTo: topAnchor, constant: 155),
            accountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            accountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            flavourButton.topAnchor.constraint(equalTo: topAnchor, constant: 250),
            flavourButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            flavourButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            
            flavourLabel.topAnchor.constraint(equalTo: topAnchor, constant: 255),
            flavourLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            flavourLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
