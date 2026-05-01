//
//  Answer.swift
//  Trivia
//
//  Created by Charles Piao on 5/1/26.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
