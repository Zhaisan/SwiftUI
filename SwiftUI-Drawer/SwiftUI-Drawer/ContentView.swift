//
//  ContentView.swift
//  SwiftUI-Drawer
//
//  Created by Zhaisan on 07.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var offset: CGFloat = 200
    @State private var isInitialOffsetSet = false
    
    var body: some View {
        ZStack{
            HomeView()
            
            GeometryReader{ proxy in
                ZStack{
                    //Blur
                    BlurView(style: .systemThinMaterialDark)
                    
                    DrawerView()
                }
                
            }
           
            .offset(y: offset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        let startLocation = value.startLocation
                        offset = startLocation.y + value.translation.height
                    })
            )
            .onAppear{
                if !isInitialOffsetSet{
                    offset = UIScreen.main.bounds.height - 250
                    isInitialOffsetSet = true
                }
                
            }
            
        }
        .ignoresSafeArea(.all, edges: .all) //entire screen
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Blurred View
struct BlurView: UIViewRepresentable{
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(
            effect: UIBlurEffect(style: style)
        )
        
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        // do nothing
    }
}


//Home View
struct HomeView: View{
    var body: some View{
        GeometryReader { proxy in
            let frame  = proxy.frame(in: .global)
            Image("cristiano")
                .resizable()
                .scaledToFill()
                .frame(width: frame.size.width,
                       height: frame.size.height)
        }
    }
}

//Drawer View

struct DrawerView: View{
    @State var text: String = ""
    var body: some View{
        VStack{
            Capsule()
                .frame(width: 100, height: 7)
                .foregroundColor(Color.white)
                .padding(.top, 7)
            
            TextField("Search", text: $text)
                .padding()
                .background(Color(.systemBackground))
                .opacity(0.7)
                .padding(12)
                .cornerRadius(7)
            
            HStack(alignment: .center, spacing: 20){
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bell")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.blue)
                        .clipShape(Circle())
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "airplane")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.pink)
                        .clipShape(Circle())
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "gear")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.orange)
                        .clipShape(Circle())
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "gift")
                        .foregroundColor(.white)
                        .frame(width: 55, height: 55)
                        .background(Color.green)
                        .clipShape(Circle())
                })
            }
            
            Spacer()
        }
    }
}
