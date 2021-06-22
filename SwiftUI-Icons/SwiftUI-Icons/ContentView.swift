//
//  ContentView.swift
//  SwiftUI-Icons
//
//  Created by Zhaisan on 22.06.2021.
//

import SwiftUI
import SwiftUIFontIcon


struct ContentView: View {
    
    @State var updateBg = false
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Text("Material Icon (Assistant)")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .assistant), fontsize: 45, color: .blue)
                    }
                    .padding()
                    
                    HStack{
                        Text("Ionicon button (Add)")
                        Spacer()
                        FontIcon.button(.ionicon(code: .ios_add_circle), action: {
                            self.updateBg.toggle()
                        }, padding: 0, fontsize: 45, color: .red)
                    }
                    .padding()
                    
                    HStack{
                        Text("Material Icon (Sync)")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .sync), fontsize: 45, color: .yellow)
                    }
                    .padding()
                    
                    HStack{
                        Text("AwesomeSolid (aacusoft)")
                        Spacer()
                        FontIcon.text(.awesome5Solid(code: .accusoft), fontsize: 45, color: .green)
                    }
                    .padding()
                    
                    HStack{
                        Text("Material Icon (accessible)")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .accessible), fontsize: 45, color: .orange)
                    }
                    .padding()
                }
            }
            .background(updateBg ? Color.pink: Color(.systemBackground))
            .navigationTitle("Custom Icons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
