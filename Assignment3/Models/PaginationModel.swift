//
//  PaginationModel.swift
//  Assignment3
//
//  Created by user231949 on 3/26/23.
//

import Foundation
struct PaginationModel : Codable {
    let currentPage : Int
    let nextPage : Int
    let totalPages : Int
}
