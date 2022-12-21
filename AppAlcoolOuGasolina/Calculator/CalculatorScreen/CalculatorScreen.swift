//
//  CalculatorScreen.swift
//  AppAlcoolOuGasolina
//
//  Created by Natanael Alves Pereira on 21/12/22.
//

import UIKit

class CalculatorScreen: UIView {
    
    lazy var backgroundImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR DARK")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO menor")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var ethanolPriceTF: UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no //auto correção
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .decimalPad
        tf.placeholder = "Preço do Álcool"
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var gasPriceTF: UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no //auto correção
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .decimalPad
        tf.placeholder = "Preço do Gasolina"
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var calculateButton: UIButton = {
       let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Calcular", for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 9
        bt.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
//        bt.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return bt
    }()
    
    lazy var backButton: UIButton = {
       let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "Botão Back"), for: .normal)
        //        bt.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return bt
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(backButton)
        addSubview(logoAppImageView)
        addSubview(ethanolPriceTF)
        addSubview(gasPriceTF)
        addSubview(calculateButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 150),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -20),
            
            ethanolPriceTF.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 134),
            ethanolPriceTF.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ethanolPriceTF.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            ethanolPriceTF.heightAnchor.constraint(equalToConstant: 45),
            
            gasPriceTF.topAnchor.constraint(equalTo: ethanolPriceTF.bottomAnchor, constant: 16),
            gasPriceTF.leadingAnchor.constraint(equalTo: ethanolPriceTF.leadingAnchor),
            gasPriceTF.trailingAnchor.constraint(equalTo: ethanolPriceTF.trailingAnchor),
            gasPriceTF.heightAnchor.constraint(equalTo: ethanolPriceTF.heightAnchor),
            
            calculateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -135),
            calculateButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            calculateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            calculateButton.heightAnchor.constraint(equalToConstant: 44),
            
            
        ])
    }
    
}
