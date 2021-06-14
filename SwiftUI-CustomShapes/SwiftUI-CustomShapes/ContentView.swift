//
//  ContentView.swift
//  SwiftUI-CustomShapes
//
//  Created by Zhaisan on 15.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var scale1: CGFloat = 2
    @State var scale2: CGFloat = 2
    @State var changed1 = false
    @State var changed2 = false
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Button(action: {
                    if !changed1{
                        self.scale1 = 3
                        changed1 = true
                    }
                    else{
                        self.scale1 = 2
                        changed1 = false
                    }
                    
                }, label: {
                    Triangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.green)
                        .scaleEffect(scale1)
                        
                })
                Spacer()
                Button(action: {
                    if !changed2{
                        self.scale2 = 3
                        changed2 = true
                    }
                    else{
                        self.scale2 = 2
                        changed2 = false
                    }
                    
                }, label: {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.purple)
                        .scaleEffect(scale2)
                        
                })
                Spacer()
                
            }
            .navigationTitle("Custom Shapes :D")
        }
    }
}

struct Triangle: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Lines of path
        // Start at top middle
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        
        // Move to bottom left
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        // Move to bottom right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // End at top middle
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct Circle: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.size.width / 2,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false)
        return path
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
