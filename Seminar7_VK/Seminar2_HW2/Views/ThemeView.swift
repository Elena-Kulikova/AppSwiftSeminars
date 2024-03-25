//
//  ThemeView.swift
//  Seminar2_HW2
//
//  Created by Elena on 13.03.2024.
//

import Foundation
import UIKit

protocol ThemeViewDelegate: AnyObject {
    func updateTheme()
}

final class ThemeView: UIView {
    weak var delegate: ThemeViewDelegate?

    private var buttonWhiteTheme: UIButton = {
        let button = UIButton()
        button.setTitle("Изменить цвет фона на белый", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.backgroundColor = WhiteTheme().backgroundColor
        return button
    }()

    private var buttonBlueTheme: UIButton = {
        let button = UIButton()
        button.setTitle("Изменить цвет фона на сиреневый", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.yellow, for: .highlighted)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.backgroundColor = BlueTheme().backgroundColor
        return button
    }()

    private var buttonGreyTheme: UIButton = {
        let button = UIButton()
        button.setTitle("Изменить цвет фона на серый", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.red, for: .highlighted)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1
        button.backgroundColor = GreyTheme().backgroundColor
        return button
    }()

    init() {
        super.init(frame: .zero)
        backgroundColor = Theme.currentTheme.backgroundColor
        buttonWhiteTheme.addTarget(self, action: #selector (tapWhiteTheme), for: .touchUpInside)
        buttonBlueTheme.addTarget(self, action: #selector (tapBlueTheme), for: .touchUpInside)
        buttonGreyTheme.addTarget(self, action: #selector (tapGreyTheme), for: .touchUpInside)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented" )
    }

    private func setupViews () {
        addSubview(buttonWhiteTheme)
        addSubview(buttonBlueTheme)
        addSubview(buttonGreyTheme)
        setupConstraints()
    }

    private func setupConstraints () {
        buttonWhiteTheme.translatesAutoresizingMaskIntoConstraints = false
        buttonBlueTheme.translatesAutoresizingMaskIntoConstraints = false
        buttonGreyTheme.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            buttonWhiteTheme.bottomAnchor.constraint(equalTo: buttonBlueTheme.topAnchor, constant: -30),
            buttonWhiteTheme.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonWhiteTheme.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonWhiteTheme.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),

            buttonBlueTheme.centerYAnchor.constraint(equalTo: centerYAnchor),
            buttonBlueTheme.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonBlueTheme.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonBlueTheme.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),

            buttonGreyTheme.topAnchor.constraint(equalTo: buttonBlueTheme.bottomAnchor, constant: 30),
            buttonGreyTheme.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonGreyTheme.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonGreyTheme.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)

            ])
    }
}

private extension ThemeView {
    @objc func tapWhiteTheme() {
        Theme.currentTheme = WhiteTheme()
        backgroundColor = Theme.currentTheme.backgroundColor
        delegate?.updateTheme()

    }

    @objc func tapBlueTheme() {
        Theme.currentTheme = BlueTheme()
        backgroundColor = Theme.currentTheme.backgroundColor
        delegate?.updateTheme()

    }

    @objc func tapGreyTheme() {
        Theme.currentTheme = GreyTheme()
        backgroundColor = Theme.currentTheme.backgroundColor
        delegate?.updateTheme()

    }
}
