//
//  ResultState.swift
//  TestNewsApp
//
//  Created by André Almeida on 2023-02-09.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
