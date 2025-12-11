//
//  ChartViewModel.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 11/12/25.
//

import Foundation
import SwiftUI
@Observable
class ChartViewModel {
    var prices: [PricePoint] = []

    init() {
        loadData()
    }

    func loadData() {
        // Animate data coming in gradually like real chart
        Task {
            for point in staticPrices {
                try? await Task.sleep(nanoseconds: 200_000_000) // 0.2 sec
                withAnimation(.easeInOut(duration: 0.3)) {
                    prices.append(point)
                }
            }
        }
    }
}
