//
//  ContentView.swift
//  SwiftUI-CustomTabBar
//
//  Created by Zhaisan on 24.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 0
    @State var presented = false
    
    let icons = [
        "house",
        "gear",
        "plus",
        "lasso",
        "message"
    ]
    
    var body: some View {
        VStack(spacing: 0){
            //Content
            ZStack{
                Spacer().fullScreenCover(isPresented: $presented, content: {
                    Button(action: {
                        presented.toggle()
                    }, label: {
                        Text("Close")
                            .frame(width: 200,
                                   height: 50,
                                   alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(8)
                    })
                })
                switch selectedIndex {
                case 0:
                    NavigationView{
                        VStack{
                            Text("First screen")
                        }
                        .navigationTitle("Home")
                    }
                case 1:
                    NavigationView{
                        VStack{
                            Text("First screen")
                        }
                        .navigationTitle("Settings")
                    }
                case 2:
                    NavigationView{
                        VStack{
                            Text("First screen")
                        }
                        .navigationTitle("Add")
                    }
                case 3:
                    NavigationView{
                        VStack{
                            Text("First screen")
                        }
                        .navigationTitle("Edit")
                    }
                default:
                    NavigationView{
                        VStack{
                            Text("First screen")
                        }
                        .navigationTitle("Message")
                    }
                }
                
            }
            
            
            Divider()
                .padding(.bottom, 20)
            HStack{
                ForEach(0..<5, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        if number == 2{
                            presented.toggle()
                        }
                        else{
                            self.selectedIndex = number
                        }
                    }, label: {
                        if number == 2{
                            Image(systemName: icons[number])
                                .font(.system(size: 25,
                                              weight: .regular,
                                              design: .default))
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .background(Color.blue)
                                .cornerRadius(30)
                                
                        }
                        else{
                            Image(systemName: icons[number])
                                .font(.system(size: 25,
                                              weight: .regular,
                                              design: .default))
                                .foregroundColor(selectedIndex == number ? Color(.label) : Color(UIColor.lightGray)) // selected icon color
                        }
                    })
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
