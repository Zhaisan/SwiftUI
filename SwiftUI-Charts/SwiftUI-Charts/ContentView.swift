//
//  ContentView.swift
//  SwiftUI-Charts
//
//  Created by Zhaisan on 06.06.2021.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            //Line chart
            LineChartView(data: [12, 22, 6, 3, 4, 39, 25], title: "Line Chart", style: ChartStyle(backgroundColor: .blue, accentColor: .green, gradientColor: GradientColors.orange, textColor: .black, legendTextColor: .accentColor, dropShadowColor: .blue))
            
            Spacer()
            LineView(data: [21, 22, 6, 3, 4, 39, 25], title: "Line Chart")
            Spacer()
            //Bar chart
            BarChartView(data: ChartData(values: [
                        ("Jan", 1),
                        ("Feb", 28),
                        ("Mar", 8),
                        ("Apr", 12),
                        ("May", 7),
                        ("June", 25),
                    ]),
            title: "Bar Chart", style: ChartStyle(backgroundColor: .yellow, accentColor: .green, gradientColor: GradientColors.prplNeon, textColor: .black, legendTextColor: .accentColor, dropShadowColor: .blue))
            Spacer()
            
            //Pie chart
            PieChartView(data: [21, 3, 34, 110, 14],
                         title: "Pie Chart", style: ChartStyle(backgroundColor: .pink, accentColor: .green, gradientColor: GradientColors.prplPink, textColor: .black, legendTextColor: .blue, dropShadowColor: .accentColor))
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
