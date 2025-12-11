//
//  Sales.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 11/12/25.
//

import Foundation

struct Sales: Identifiable {
    let id = UUID()
    let day: String
    let value: Double
}

let weeklySales = [
    Sales(day: "Mon", value: 120),
    Sales(day: "Tue", value: 90),
    Sales(day: "Wed", value: 150),
    Sales(day: "Thu", value: 80),
    Sales(day: "Fri", value: 200),
    Sales(day: "Sat", value: 170),
    Sales(day: "Sun", value: 100)
]
