//
//  TradingDemoChart.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 11/12/25.
//

import SwiftUI
import Charts

struct TradingDemoChart: View {
    @State private var vm = ChartViewModel()
    @State private var selectedPoint: PricePoint?

    var body: some View {
        VStack(spacing: 16) {
            
            Text("Trading Chart Demo")
                .font(.title3)
                .bold()

            Chart {
                ForEach(vm.prices) { item in
                    
                    // Fill background
                    AreaMark(
                        x: .value("Time", item.time),
                        y: .value("Price", item.price)
                    )
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.blue.opacity(0.2), .clear],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    
                    // Line
                    LineMark(
                        x: .value("Time", item.time),
                        y: .value("Price", item.price)
                    )
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(.blue)
                    .lineStyle(.init(lineWidth: 3))
                    
                    // Dots on selection
                    if selectedPoint?.id == item.id {
                        PointMark(
                            x: .value("Time", item.time),
                            y: .value("Price", item.price)
                        )
                        .symbolSize(100)
                        .foregroundStyle(.red)
                    }
                }
            }
            .frame(height: 300)
//            .chartXAxis(.hidden)
//            .chartYAxis(.hidden)
            .chartOverlay { proxy in
                GeometryReader { geo in
                    Rectangle().fill(.clear).contentShape(Rectangle())
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    let x = value.location.x
                                    if let time = proxy.value(atX: x) as Int? {
                                        selectedPoint = vm.prices.first(where: { $0.time == time })
                                    }
                                }
                                .onEnded { _ in
                                    selectedPoint = nil
                                }
                        )
                }
            }

            if let p = selectedPoint {
                Text("Selected Price: \(Int(p.price))")
                    .font(.headline)
            }
        }
        .padding()
    }
}
