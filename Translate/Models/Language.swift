//
//  Language.swift
//  Translate
//
//  Created by David Yoon on 2022/02/01.
//

import Foundation


enum Language: String, CaseIterable, Codable {
    case ko
    case en
    case ja
    case ch = "zn-CN"
    
    var title: String {
        switch self {
        case .ko:
            return NSLocalizedString("Korean", comment: "")
        case .en:
            return NSLocalizedString("English", comment: "")
        case .ja:
            return NSLocalizedString("Japanese", comment: "")
        case .ch:
            return NSLocalizedString("Chinese", comment: "")
        }
    }
    
    var languageCode: String {
        self.rawValue
    }
}
