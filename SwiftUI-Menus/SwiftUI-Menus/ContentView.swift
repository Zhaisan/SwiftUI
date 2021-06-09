//
//  ContentView.swift
//  SwiftUI-Menus
//
//  Created by Zhaisan on 09.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Hello, world!")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Menu{
                                Button(action: {
                                    
                                }, label: {
                                    Label(
                                        title: { Text("Add file") },
                                        icon: { Image(systemName: "doc") })
                                })
                                Button(action: {
                                    
                                }, label: {
                                    Label(
                                        title: { Text("Rate app") },
                                        icon: { Image(systemName: "star") })
                                })
                                Button(action: {
                                    
                                }, label: {
                                    Label(
                                        title: { Text("Settings") },
                                        icon: { Image(systemName: "gear") })
                                })
                                Button(action: {
                                    
                                }, label: {
                                    Label(
                                        title: { Text("Privacy") },
                                        icon: { Image(systemName: "hand.raised") })
                                })
                                Menu{
                                    Button(action: {
                                        
                                    }, label: {
                                        Text("Option 1")
                                    })
                                    Button(action: {
                                        
                                    }, label: {
                                        Text("Option 2")
                                    })
                                } label: {
                                    Text("More options")
                                }
                            } label: {
                                Label(
                                    title: { Text("Add") },
                                    icon: { Image(systemName: "plus") }
                                )
                            }
                        }
                    }
                        
                    
            }
            .navigationTitle("SwiftUI Menus")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
