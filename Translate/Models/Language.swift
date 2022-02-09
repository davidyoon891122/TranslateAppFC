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
            return "Korean"
        case .en:
            return "English"
        case .ja:
            return "Japanese"
        case .ch:
            return "Chinese"
        }
    }
    
    var languageCode: String {
        self.rawValue
    }
}
