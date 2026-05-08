//
//  TriviaView.swift
//  Trivia
//
//  Created by Charles Piao on 5/4/26.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                
            }

        } else {
            QuestionView()
                .environmentObject(triviaManager)

        }
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
