//
//  Theme.swift
//  Seminar2_HW2
//
//  Created by Elena on 13.03.2024.
//

import UIKit

enum ThemeTypes: String {
    case whiteTheme = "white"
    case blueTheme = "blue"
    case greyTheme = "grey"
}

protocol AppThemeProtocol {
    var backgroundColor: UIColor { get }
    var textColor: UIColor { get }
    var subtitleTextColor: UIColor { get }
    var type: ThemeTypes { get set}
}

extension AppThemeProtocol {
    var subtitleTextColor: UIColor {
        .gray
    }
}

final class Theme {
    static var currentTheme: AppThemeProtocol = WhiteTheme()
}

final class WhiteTheme: AppThemeProtocol {
    var backgroundColor: UIColor = .white
    var textColor: UIColor = .black
    var type: ThemeTypes = .whiteTheme
}

final class BlueTheme: AppThemeProtocol {
    var backgroundColor: UIColor = UIColor(red: 228/255, green: 231/255, blue: 255, alpha: 1)
    var textColor: UIColor = .brown
    var type: ThemeTypes = .blueTheme
}

final class GreyTheme: AppThemeProtocol {
    var backgroundColor: UIColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1)
    var textColor: UIColor = .systemPink
    var type: ThemeTypes = .greyTheme
}
