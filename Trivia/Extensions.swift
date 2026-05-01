//
//  Extensions.swift
//  Trivia
//
//  Created by Charles Piao on 5/1/26.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
