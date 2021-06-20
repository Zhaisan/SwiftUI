//
//  ContentView.swift
//  SwiftUI-Indicators
//
//  Created by Zhaisan on 20.06.2021.
//

import SwiftUI
import ActivityIndicatorView

struct ContentView: View {
    
    @State var loading = false
    
    var body: some View {
        NavigationView{
            VStack{
                ActivityIndicatorView(isVisible: $loading, type: .gradient([.gray, .pink, .green], .round))
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                ActivityIndicatorView(isVisible: $loading, type: .rotatingDots)
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
                ActivityIndicatorView(isVisible: $loading, type: .equalizer)
                    .foregroundColor(.red)
                    .frame(width: 70, height: 70, alignment: .center)
                    .padding()
                Button(action: {
                    self.loading.toggle()
                }, label: {
                    Text("Load Data")
                        .bold()
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(5)
                    
                })
            }
            .navigationTitle("Indicators")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
