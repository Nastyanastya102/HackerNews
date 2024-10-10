//
//  ContentView.swift
//  HackerNews
//
//  Created by Nastya Klyashtorna on 2024-10-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(arr) { post in
                Text(post.title)
            }
                .navigationTitle("H4XOR")
        }
        
        
    }
}

struct Post: Identifiable {
    var id: String
    var title: String
}

let arr = [
    Post(id: "1", title: "Title 1"),
    Post(id: "2", title: "Title 2"),
    Post(id: "3", title: "Title 3"),
]

#Preview {
    ContentView()
}
