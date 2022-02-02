//
//  Type.swift
//  Translate
//
//  Created by David Yoon on 2022/02/02.
//

import UIKit

enum `Type` {
    case source
    case target

    var color: UIColor {
        switch self {
        case .source: return .label
        case .target: return .mainTintColor
        }
    }
}
