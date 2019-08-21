//
//  ContentView.swift
//  testing-NewAPI
//
//  Created by Diego Salazar Arp on 21-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ArticleListViewModel()

    
    var body: some View {
    List(model.articles) { article in
                    
                    VStack(alignment: .leading) {
                    
                    Text(article.title)
                        .lineLimit(nil)
                    
                    Text(article.description)
                        .foregroundColor(.secondary)
                        .lineLimit(nil)
                        
                    }
                    
                }
            }
        }


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
