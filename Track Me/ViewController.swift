//
//  ViewController.swift
//  Track Me
//
//  Created by Omar T&S on 05/01/2023.
//

import UIKit

class ViewController: UIViewController {
    private let mainView = UIView()
    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupMainView()
        setupConstraints()
    }

    override func loadView() {
        mainView.backgroundColor = .yellow
        view = mainView
    }

    private func setupMainView() {
        label.text = "My label in code behind in order to avoid all git merge conflict when multiple persons works on the same code at the same time."
        label.numberOfLines = 0
        mainView.addSubview(label)
    }

    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        mainView.translatesAutoresizingMaskIntoConstraints = false
        let safeArea = mainView.safeAreaLayoutGuide

        mainView.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 10),
            safeArea.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10),
            label.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            safeArea.bottomAnchor.constraint(greaterThanOrEqualTo: label.bottomAnchor, constant: 10),
        ])
    }
}

