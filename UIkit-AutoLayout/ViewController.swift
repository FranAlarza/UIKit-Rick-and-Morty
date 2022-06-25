//
//  ViewController.swift
//  UIkit-AutoLayout
//
//  Created by Fran Alarza on 25/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        self.view = onboardingView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

