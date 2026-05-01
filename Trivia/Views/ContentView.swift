//
//  ContentView.swift
//  Trivia
//
//  Created by Charles Piao on 4/29/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                
                Text("Are you ready to test out your trivia skills?")
                    .foregroundColor(Color("AccentColor"))
            }
            
            PrimaryButton(text: "Let's go!")
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.9843, green: 0.92941, blue: 0.8470588))
    }
}

#Preview {
    ContentView()
}
