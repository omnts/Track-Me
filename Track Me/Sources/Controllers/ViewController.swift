//
//  ViewController.swift
//  Track Me
//
//  Created by Omar T&S on 05/01/2023.
//

import UIKit

class ViewController: UIViewController {
    private let mainView = UserLocationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        mainView.backgroundColor = .yellow
        view = mainView
    }
}

