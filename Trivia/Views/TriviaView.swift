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
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Congratulations, you completed the game! 🥳")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9843, green: 0.92941, blue: 0.8470588))
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
