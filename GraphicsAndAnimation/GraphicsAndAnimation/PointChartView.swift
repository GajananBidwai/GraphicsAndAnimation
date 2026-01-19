//
//  PointChartView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct PointChartView: View {
    var body: some View {
        Chart(weeklySales) { item in
            PointMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.purple)
            .symbol(.circle)
            .symbolSize(80)
        }
        .frame(height: 250)
    }
}

#Preview {
    PointChartView()
}
