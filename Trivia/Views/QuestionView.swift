//
//  QuestionView.swift
//  Trivia
//
//  Created by Charles Piao on 5/1/26.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack{
                Text("Trivia Game")
                    .lilacTitle()
                
                    Spacer()
                
                    Text("1 out of 10")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20){
                Text("In the 2002 film &quot;Kung Pow! Enter the Fist&quot;, Master Pain changes his name to what?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.9843, green: 0.92941, blue: 0.8470588))
    }
}

#Preview {
    QuestionView()
}
