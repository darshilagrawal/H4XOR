//
//  ContentView.swift
//  H4XOR News
//
//  Created by Darshil Agrawal on 01/08/20.
//  Copyright © 2020 Darshil Agrawal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager=NetworkManager()
    var body: some View {
        
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }.navigationBarTitle("H4XOR")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



