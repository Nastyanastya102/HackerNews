//
//  ContentView.swift
//  HackerNews
//
//  Created by Nastya Klyashtorna on 2024-10-09.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                
            }
                .navigationTitle("H4XOR")
        }
        .onAppear() {
            self.networkManager.fetchData()
        }
    }
        
}

//let arr = [
//    Post(id: "1", title: "Title 1"),
//    Post(id: "2", title: "Title 2"),
//    Post(id: "3", title: "Title 3"),
//]

#Preview {
    ContentView()
}
