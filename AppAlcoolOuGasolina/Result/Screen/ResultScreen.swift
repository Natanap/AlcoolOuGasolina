//
//  ResultScreen.swift
//  AppAlcoolOuGasolina
//
//  Created by Natanael Alves Pereira on 21/12/22.
//

import UIKit

protocol ResultScreenDelegate: AnyObject{
    func tappedBackButton()
    func tappedCalculteButton()
}

class ResultScreen: UIView {
    
    private weak var delegate: ResultScreenDelegate?
    
    public func delegate(delegate: ResultScreenDelegate?){
        self.delegate = delegate
    }
    
    lazy var backgroundImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG BLUR")
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
    
    lazy var sentenceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 31)
        label.text = "Abasteça com:"
        return label
    }()
    
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 73)
        return label
    }()
    
    lazy var calculteButton: UIButton = {
       let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Calcular novamente", for: .normal)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 18 , weight: .bold)
        bt.setTitleColor(.white, for: .normal)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 8
        bt.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 127/255, alpha: 1.0)
        bt.addTarget(self, action: #selector(tappedCalculteButton), for: .touchUpInside)
        return bt
    }()
    
    lazy var backButton: UIButton = {
       let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "Botão Back"), for: .normal)
        bt.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return bt
    }()
    
    @objc func tappedCalculteButton() {
        delegate?.tappedCalculteButton()
    }
    
    @objc func tappedBackButton() {
        delegate?.tappedBackButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImageView)
        addSubview(logoAppImageView)
        addSubview(sentenceLabel)
        addSubview(resultLabel)
        addSubview(calculteButton)
        addSubview(backButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            sentenceLabel.topAnchor.constraint(equalTo: logoAppImageView.bottomAnchor, constant: 180),
            sentenceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            resultLabel.topAnchor.constraint(equalTo: sentenceLabel.bottomAnchor,constant: 10),
            resultLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            calculteButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -135),
            calculteButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            calculteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            calculteButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
