//
//  BarChartView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct BarChartView: View {
    
    var body: some View {
        Chart(weeklySales) { item in
            BarMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.blue)
        }
        .frame(height: 250)
    }
}

#Preview {
    BarChartView()
}
