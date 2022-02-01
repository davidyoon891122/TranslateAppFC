//
//  Language.swift
//  Translate
//
//  Created by David Yoon on 2022/02/01.
//

import Foundation


enum Language: CaseIterable {
    case ko
    case en
    case ja
    case ch
    
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
}
