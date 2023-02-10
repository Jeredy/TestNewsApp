//
//  NewsResponse.swift
//  TestNewsApp
//
//  Created by André Almeida on 2023-02-09.
//

import Foundation

// MARK: - Welcome
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title: String?
    let description: String?
    let image: String?
    let date: Date?
}

extension Article {
    static var dummyData: Article {
        .init(
            author: "Natasha Turak",
            url: "https://www.cnbc.com/2023/02/09/russia-ukraine-live-updates.html",
            source: "CNBC",
            title: "Zelenskyy on European mission for aid, fighter jets; Russian forces close in on Bakhmut - CNBC",
            description: "The Ukrainian leader addressed the European Parliament in his second known overseas trip since Russia invaded his country in February last year.",
            image: "https://image.cnbcfm.com/api/v1/image/107191651-1675926466998-gettyimages-1464147183-70909487.jpeg?v=1675937598&w=1920&h=1080",
            date: Date()
        )
    }
}
