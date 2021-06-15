//
//  ContentView.swift
//  SwiftUI-WebView
//
//  Created by Zhaisan on 16.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            WebView(url: URL(string: "https://www.apple.com/"))
            .navigationTitle("SwiftUI Web View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
