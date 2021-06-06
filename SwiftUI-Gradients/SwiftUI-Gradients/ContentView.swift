//
//  ContentView.swift
//  SwiftUI-Gradients
//
//  Created by Zhaisan on 06.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [
                Color(.systemPink),
                Color(.systemBlue),
                Color(UIColor(red: 1, green: 1, blue: 1, alpha: 1)),
                Color("myColor")
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea(.all, edges: .all) //makes entire screen
            
            VStack{
                Image(systemName: "wifi")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 150, height: 120, alignment: .center)
                    .padding()
                Text("Zhaisan Sarsengaliyev!")
                    .font(.system(size: 32,
                                  weight: .semibold,
                                  design: .default))
                    .foregroundColor(.white)
                
                Spacer()
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
