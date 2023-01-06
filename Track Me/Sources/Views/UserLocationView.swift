//
//  UserLocationView.swift
//  Track Me
//
//  Created by Omar T&S on 06/01/2023.
//

import Foundation
import UIKit

class UserLocationView: UIView {
    private enum Constants {
        static let cornerRadius: CGFloat = 12
        public static let buttonSize = CGSize(width: 50, height: 50)
        static let buttonImageInset: CGFloat = 10
    }

    private let label = UILabel()

    init() {
        super.init(frame: .zero)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        backgroundColor = .systemPink
        label.text = "My label in code behind in order to avoid all git merge conflict when multiple persons works on the same code at the same time."
        label.numberOfLines = 0
        addSubview(label)
    }

    private func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10),
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            safeAreaLayoutGuide.bottomAnchor.constraint(greaterThanOrEqualTo: label.bottomAnchor, constant: 10),
        ])
    }
}
