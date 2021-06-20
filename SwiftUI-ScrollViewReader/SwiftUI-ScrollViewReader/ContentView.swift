//
//  ContentView.swift
//  SwiftUI-ScrollViewReader
//
//  Created by Zhaisan on 20.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollViewReader{ scrollView in
                ScrollView{
                    VStack(alignment: .leading){
                        Button(action: {
                            withAnimation{ // плавный скроллинг до конца листа
                                scrollView.scrollTo(999, anchor: .center)
                            }
                        }, label: {
                            Text("Scroll to Bottom")
                                .bold()
                                .font(.system(size: 22))
                                .background(Color.red)
                                .foregroundColor(.white)
                                .padding(.leading)
                                
                        })
                        ForEach(0...1000, id: \.self){ num in
                            HStack{
                                Label(
                                    title: { Text("Position: \(num)") },
                                    icon: { Image(systemName: "house") }
                                )
                                Spacer()
                            }
                            .id(num)
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Scroll View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
