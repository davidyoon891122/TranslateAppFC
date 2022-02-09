//
//  TranslateResponseModel.swift
//  Translate
//
//  Created by David Yoon on 2022/02/09.
//

import Foundation

struct TranslateResponseModel: Decodable {
    private let message: Message
    
    var translatedText: String {
        message.result.translatedText
    }
    
    struct Message: Decodable {
        let result: Result
    }
    
    
    struct Result: Decodable {
        let translatedText: String
    }
}
