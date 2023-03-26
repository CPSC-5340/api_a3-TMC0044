//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Trivia: View {
    
    @ObservedObject var Triviavm = QuoteViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(Triviavm.triviaData) { trivia in
                    NavigationLink {
                        TriviaDetail(trivia: trivia)
                    } label: {
                        Text(trivia.category)
                    }
                }
                
            }
            .task {
                await Triviavm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Trivia API")
            .alert(isPresented: $Triviavm.hasError, error: Triviavm.error) {
                Text("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Trivia()
    }
}
