//
//  ChartInteractiveSelection.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI
import Charts

struct ChartInteractiveSelection: View {
    @State private var selectedDay: String?
    
    var body: some View {
        Chart(weeklySales) { item in
            BarMark(
                x: .value("Day", item.day),
                y: .value("Sales", item.value)
            )
            .foregroundStyle(selectedDay == item.day ? .red : .blue)
            
        }
        .chartOverlay { proxy in
            Rectangle().fill(.clear).contentShape(Rectangle())
                .onTapGesture { location in
                    if let value: String = proxy.value(atX: location.x) {
                        print(value)
                        selectedDay = value
                            
                        print(selectedDay)
                        
                    }
                }
                .foregroundStyle((selectedDay != nil) ? Color.green : Color.red)
            
        }
    }
}

#Preview {
    ChartInteractiveSelection()
}
