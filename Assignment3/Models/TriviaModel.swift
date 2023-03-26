//
//  RMModel.swift
//  Assignment3
//
//  Created by user231949 on 3/26/23.
//

import Foundation

struct TriviaResult : Codable {
    let response_code: Int
    let results : [TriviaModel]
}

struct TriviaModel : Codable, Identifiable {
    let id : String
    let category : String
    let type : String
    let difficulty  : String
    let question : String
    let correct_answer : String
    let incorrect_answer : String
}
