//
//  ContentView.swift
//  SwiftUI-Map
//
//  Created by Zhaisan on 13.06.2021.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                GeometryReader{ proxy in
                    MapView(coordinate: CLLocationCoordinate2D(
                                latitude: 43,
                                longitude: 76))
                        .frame(width: proxy.size.width,
                               height: proxy.size.height,
                               alignment: .center)
                }
            }
            .navigationTitle("SwiftUI Map")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
