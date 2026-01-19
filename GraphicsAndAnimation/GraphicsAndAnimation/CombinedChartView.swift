//
//  CombinedChartView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct CombinedChartView: View {
    var body: some View {
        Chart(weeklySales) { item in
            AreaMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.blue.opacity(0.2))
            
            LineMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.blue)
            .lineStyle(.init(lineWidth: 3))
            
            PointMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.blue)
            .symbol(.circle)
        }
        .frame(height: 250)
    }
}

#Preview {
    CombinedChartView()
}
