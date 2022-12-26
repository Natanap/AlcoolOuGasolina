//
//  ResultVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Natanael Alves Pereira on 21/12/22.
//

import UIKit

class ResultVC: UIViewController {

    var resultScreen: ResultScreen?
    let bestFuel: BestFuel
    
    init(bestFuel: BestFuel) {
        self.bestFuel = bestFuel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        resultScreen = ResultScreen()
        view = resultScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultScreen?.delegate(delegate: self)
        resultScreen?.resultLabel.text = bestFuel.rawValue
    }
    
    func popViewController(){
        navigationController?.popViewController(animated: true)
    }

}

extension ResultVC: ResultScreenDelegate {
    func tappedBackButton() {
        popViewController()
    }
    
    func tappedCalculteButton() {
        popViewController()
    }
    
    
}
