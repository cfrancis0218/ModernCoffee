//
//  ViewController.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-04.
//

import UIKit

class ModernCoffeeVC: UIViewController {
    
    let modernCoffeeView = ModernCoffee_Style()
    let coffeeImage = CoffeeImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 600))
    let coffeeView = CoffeeUnderView()
    let menuButton = MenuButton()
    let menuView = MenuV()
    let titleLabel = TitleLabel()
    let subTitleLabel = SubTitleLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationSetup()
        mainViewSetup()
        mainContraints()
        menuSetup()
    }
    
    func mainViewSetup() {
        view = modernCoffeeView
    }
    
    func navigationSetup() {
        navigationController?.isNavigationBarHidden = true
    }
    
    func menuSetup() {
        menuButton.addTarget(self, action: #selector(openMenu), for: .touchUpInside)
    }
    
    @objc func openMenu() {
        menuView.isHidden = false
        titleLabel.isHidden = true
        subTitleLabel.isHidden = true
        
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseIn, animations: ({
            self.menuView.alpha = 1.0
            self.menuView.center.x += -50
        }),
        completion: nil)
    }
    
    func mainContraints() {
        view.addSubview(coffeeView)
        view.addSubview(coffeeImage)
        view.addSubview(menuButton)
        view.addSubview(titleLabel)
        view.addSubview(subTitleLabel)
        view.addSubview(menuView)
        coffeeImage.translatesAutoresizingMaskIntoConstraints = false
        coffeeView.translatesAutoresizingMaskIntoConstraints = false
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        menuView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            coffeeView.topAnchor.constraint(equalTo: view.topAnchor, constant: -300),
            coffeeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            coffeeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50),
            coffeeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            
            menuButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            menuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -290),
            menuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -700),
            
            menuView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            menuView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -50),
            menuView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            menuView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 550),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            
            subTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 600),
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            subTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            subTitleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            
            coffeeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: -300),
            coffeeImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            coffeeImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50),
            coffeeImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        ])
    }
}

