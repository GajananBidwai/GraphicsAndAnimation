//
//  AreaChartView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct AreaChartView: View {
    var body: some View {
        Chart(weeklySales) { item in
            AreaMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(.linearGradient(
                colors: [.blue.opacity(0.3), .blue],
                startPoint: .top,
                endPoint: .bottom
            ))
        }
        .frame(height: 250)
    }
}

#Preview {
    AreaChartView()
}
