//
//  OrderScreen.swift
//  ModernCoffee
//
//  Created by Christian Elijah on 2020-11-05.
//

import UIKit

class OrderScreen: UIViewController {
    
    let aStepper = AmountStepper()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(aStepper)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
