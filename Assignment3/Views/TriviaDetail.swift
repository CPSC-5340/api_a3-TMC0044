//
//  RMDetail.swift
//  Assignment3
//
//  Created by user231949 on 3/26/23.
//

import SwiftUI

struct TriviaDetail: View {
    
    var trivia : TriviaModel
    
    var body: some View {
        VStack {
            Text(trivia.category)
                .padding(.horizontal)
                .font(.system(size:20))
            Text(trivia.type)
                .padding(.horizontal)
            Text(trivia.difficulty)
                .padding(.horizontal)
            Text(trivia.question)
                .padding(.horizontal)
            Text(trivia.correct_answer)
                .padding(.horizontal)
            Text(trivia.incorrect_answer)
                .padding(.horizontal)
        }
    }
}
