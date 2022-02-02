//
//  Bookmark.swift
//  Translate
//
//  Created by David Yoon on 2022/02/02.
//

import Foundation

struct Bookmark: Codable {
    let sourceLanguage: Language
    let translateLanguage: Language
    
    let sourceText: String
    let translatedText: String
}



