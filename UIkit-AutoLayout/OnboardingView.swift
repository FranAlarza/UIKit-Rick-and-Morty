//
//  OnboardingView.swift
//  UIkit-AutoLayout
//
//  Created by Fran Alarza on 26/6/22.
//

import Foundation
import UIKit

final class onboardingView: UIView {
    private let onBoardingIM: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "rickandmorty")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.numberOfLines = 0
        textLabel.textAlignment = .center
        textLabel.text = "Welcome to APP of Rick and Morty"
        textLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    private lazy var skipOnBoardingButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulsa para continuar"
        config.subtitle = "Onboarding"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubviews()
        configConstraints()
    }

    func addSubviews() {
        [onBoardingIM, textLabel, skipOnBoardingButton].forEach(addSubview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            textLabel.bottomAnchor.constraint(equalTo: skipOnBoardingButton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            onBoardingIM.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
            onBoardingIM.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            onBoardingIM.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            skipOnBoardingButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            skipOnBoardingButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    @objc func showMessage() {
        print("Skip onboarding")
    }
}
