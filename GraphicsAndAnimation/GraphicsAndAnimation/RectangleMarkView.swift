//
//  RectangleMarkView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct RectangleMarkView: View {
    var body: some View {
        Chart(weeklySales) { item in
            RectangleMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value),
                width: .automatic,
                height: .automatic
            )
            .foregroundStyle(by: .value("Sales", item.value))
        }
        .frame(height: 250)
    }
}

#Preview {
    RectangleMarkView()
}
