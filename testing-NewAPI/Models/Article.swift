//
//  Article.swift
//  testing-NewAPI
//
//  Created by Diego Salazar Arp on 21-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation



struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
}
