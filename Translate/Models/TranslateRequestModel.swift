//
//  TranslateRequestModel.swift
//  Translate
//
//  Created by David Yoon on 2022/02/09.
//

import Foundation

struct TranslateRequestModel: Codable {
    let source: String
    let target: String
    let text: String
}
