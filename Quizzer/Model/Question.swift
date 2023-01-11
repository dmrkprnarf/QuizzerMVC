//
//  Question.swift
//  Quizzer
//
//  Created by Arif Demirkoparan on 11.01.2023.
//

import Foundation

struct Question {
    let question: String
    let answer: [String]
    let correct: String
    
    init(q: String, a: [String], c: String) {
        question = q
        answer = a
        correct = c
    }
}
