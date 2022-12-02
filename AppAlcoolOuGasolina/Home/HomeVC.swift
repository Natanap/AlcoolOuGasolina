//
//  HomeVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Natanael Alves Pereira on 02/12/22.
//

import UIKit

class HomeVC: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

