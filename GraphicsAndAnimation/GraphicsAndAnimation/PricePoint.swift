//
//  PricePoint.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 11/12/25.
//

import Foundation

struct PricePoint: Identifiable {
    let id = UUID()
    let time: Int            // simplification
    let price: Double
}

let staticPrices: [PricePoint] = [
    .init(time: 1, price: 100),
    .init(time: 2, price: 130),
    .init(time: 3, price: 90),
    .init(time: 4, price: 150),
    .init(time: 5, price: 120),
    .init(time: 6, price: 180),
    .init(time: 7, price: 140),
    .init(time: 8, price: 200),
    .init(time: 9, price: 170)
]
