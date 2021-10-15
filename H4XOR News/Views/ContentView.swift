//
//  ContentView.swift
//  H4XOR News
//
//  Created by Hao Sun on 10/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack {
                        Text(String(post.points))
                            
                        Text(post.title)
                            .padding(.vertical, 10.0)
                            
                    }
                }
            }
            .navigationTitle("H4XOR NEWS")
            .listStyle(.grouped)
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
