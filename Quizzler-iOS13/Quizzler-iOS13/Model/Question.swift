//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Weihua Pan on 12/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question :String
    let answer : String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
