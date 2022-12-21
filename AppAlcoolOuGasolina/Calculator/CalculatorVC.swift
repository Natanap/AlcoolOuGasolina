//
//  CalculatorVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Natanael Alves Pereira on 21/12/22.
//

import UIKit

class CalculatorVC: UIViewController {

    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCaculateButton() {
        
    }
    
    func tappedBackButton() {
        
    }
    
    
}
