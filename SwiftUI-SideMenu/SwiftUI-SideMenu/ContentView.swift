//
//  ContentView.swift
//  SwiftUI-SideMenu
//
//  Created by Zhaisan on 24.06.2021.
//

import SwiftUI

struct MenuItem: Identifiable{
    var id = UUID()
    var text: String
    let imageName: String
    let handler: () -> Void = {
        print("Tapped item")
    }
}

struct MenuContent: View {
    
    let items: [MenuItem] = [
        MenuItem(text: "Home", imageName: "house"),
        MenuItem(text: "Settings", imageName: "gear"),
        MenuItem(text: "Profile", imageName: "person.circle"),
        MenuItem(text: "Activity", imageName: "bell"),
        MenuItem(text: "Flights", imageName: "airplane"),
        MenuItem(text: "Share", imageName: "square.and.arrow.up")
        
    ]
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 43 / 255.0,
                          green: 40 / 255.0,
                          blue: 74 / 255.0,
                          alpha: 1))
            
            VStack(alignment: .leading, spacing: 0){
                ForEach(items) { item in
                    HStack{
                        Image(systemName: item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30, alignment: .center)
                        Text(item.text)
                            .foregroundColor(Color.white)
                            .bold()
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding()
                    Divider()
                }
                .onTapGesture {
                    
                }
                
                Spacer()
                    
            }
            .padding(.top, 40)
           
        }
    }
}

struct SideMenu: View {
    
    let width: CGFloat
    let menuOpened: Bool
    let toggleMenu: () -> Void
    var body: some View {
        ZStack{
            //Dimmed background view
            GeometryReader{ _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.15))
            .opacity(self.menuOpened ? 1 : 0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.toggleMenu()
            }
            
            //Menu content
            HStack{
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}

struct ContentView: View {
    
    @State var menuOpened = false
    var body: some View {
        ZStack{
            if !menuOpened{
                Button(action: {
                    // Open menu
                    self.menuOpened.toggle()
                }, label: {
                    Text("Open Menu")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                })
            }
            SideMenu(width: 220,
                     menuOpened: menuOpened,
                     toggleMenu: toggleMenu)
        }
        .edgesIgnoringSafeArea(.all) // to make entire screen
    }
    
    func toggleMenu(){
        menuOpened.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
