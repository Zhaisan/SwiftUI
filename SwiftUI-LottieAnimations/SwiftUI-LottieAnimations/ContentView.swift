//
//  ContentView.swift
//  SwiftUI-LottieAnimations
//
//  Created by Zhaisan on 14.06.2021.
//

import SwiftUI

/*
 - Bring in lottie lib
 - Create custom reusable view
 - Update some project settings
 - Bring in some dope animations
 */
struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                LottieView(fileName: "9965-loading-spinner")
                    .frame(width: 250,
                           height: 250,
                           alignment: .center)
                    
                
            }
            .navigationTitle("SwiftUI Lottie")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
