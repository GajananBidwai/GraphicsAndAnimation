//
//  LineChartView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct LineChartView: View {
    var body: some View {
        Chart(weeklySales) { item in
            LineMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.red)
            .interpolationMethod(.monotone)
        }
        .frame(height: 250)
    }
}

#Preview {
    LineChartView()
}
