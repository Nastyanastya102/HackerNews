//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Nastya Klyashtorna on 2024-10-09.
//
import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData () {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error: \(error)")
                    return
                }
                
                let decoder = JSONDecoder()
                if let safeData = data {
                    do {
                        let results = try decoder.decode(Results.self, from: safeData)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                        
                    } catch {
                        print("Error: \(error)")
                    }
                }
            }
            task.resume()
        }
    }
}
