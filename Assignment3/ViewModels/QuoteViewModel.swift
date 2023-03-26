//
//  RMViewModel.swift
//  Assignment3
//
//  Created by user231949 on 3/26/23.
//

import Foundation

class QuoteViewModel : ObservableObject {
    
    @Published private(set) var triviaData = [TriviaModel]()
    @Published var hasError = false
    @Published var error: TriviaModelError?
    private let url = "https://opentdb.com/api.php?amount=10&type=boolean"
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: url) {
            do {
                let (results, _) = try await URLSession.shared.data(from: url)
                guard let results = try JSONDecoder().decode(TriviaResult?.self, from: results) else {
                    self.hasError.toggle()
                    self.error = TriviaModelError.decodeError
                    return
                }
                self.triviaData = results.results
            } catch {
                self.hasError.toggle()
                self.error = TriviaModelError.customError(error: error)
            }
        }
    }
    
}

extension QuoteViewModel {
    enum TriviaModelError : LocalizedError {
        case decodeError
        case customError(error: Error)
        
        var errorDescription: String? {
            switch self {
            case .decodeError:
                return "Decoding Error"
            case .customError(let error):
                return error.localizedDescription
            }
        }
        
    }

}

