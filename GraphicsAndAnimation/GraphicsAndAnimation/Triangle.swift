//
//  Triangle.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 10/12/25.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))      // Top
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))   // Bottom left
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))   // Bottom right
            path.closeSubpath()
        }
    }
}

#Preview {
    Triangle()
}
