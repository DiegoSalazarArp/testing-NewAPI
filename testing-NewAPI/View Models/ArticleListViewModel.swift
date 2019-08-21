//
//  ArticleListViewModel.swift
//  testing-NewAPI
//
//  Created by Diego Salazar Arp on 21-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ArticleViewModel: Identifiable {
    
    let id = UUID()
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
    
    
}

class ArticleListViewModel: ObservableObject {
 
    
    init() { fetchTopHeadlines()}
    
    @Published
    var articles = [ArticleViewModel]()
    
    private func fetchTopHeadlines() {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=aed652c100ef456cb0f82aafc04707cf")
            else { fatalError("URL is't correct!")}
        Webservice().loadTopHeadlines(url: url) { articles in
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
        }
    }
}
