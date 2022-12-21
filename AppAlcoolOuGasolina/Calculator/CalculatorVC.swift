//
//  CalculatorVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Natanael Alves Pereira on 21/12/22.
//

import UIKit

class CalculatorVC: UIViewController {

    var screen: CalculatorScreen?
    var alert: Alert?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        screen?.delegate(delegate: self)
    }
    
    func validateTF() -> Bool {
        guard let ethanolPrice = screen?.ethanolPriceTF.text else { return false}
        guard let gasPrice = screen?.gasPriceTF.text else { return false}
        
        if ethanolPrice.isEmpty && gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "informe os valores do álcool e da gasolina")
            return false
        } else if ethanolPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "informe os valores do álcool")
            return false
        }else if gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "informe os valores da gasolina")
            return false
        }
        
        return true
    }
}

extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCaculateButton() {
        if validateTF() {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            
            let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTF.text ?? "0.0") as? Double) ?? 0.0
            
            let gasPrice: Double = (formatter.number(from: screen?.gasPriceTF.text ?? "0.0")as? Double ) ?? 0.0
            
            if ethanolPrice / gasPrice > 0.7 {
                
            } else {
                
            }
        }
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    
}
