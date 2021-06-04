//
//  ContentView.swift
//  SwiftUI-Alerts
//
//  Created by Zhaisan on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsPresented = false
    @State private var backgroundUpdated = false
    var body: some View {
        NavigationView{
            ZStack{
                if backgroundUpdated {
                    Color.red
                }
                else{
                    Color.blue
                }
                VStack{
                    Button(action: {
                        // show alert
                        self.alertIsPresented.toggle()
                        
                    }, label: {
                        Text("Tap Me!")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 24))
                    })
                    .frame(width: 200,
                           height: 50,
                           alignment: .center)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .alert(isPresented: $alertIsPresented,
                           content: {
                        Alert(title: Text("Would you like to change background color?"),
                              primaryButton: .default(Text("YES!"), action: {
                                self.backgroundUpdated.toggle()
                              }),
                              secondaryButton: .cancel(Text("No, thanks")))
                    })
                }
            }
            .navigationTitle("SwiftUI Alerts")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
