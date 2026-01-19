//
//  PathView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 20))      // Start point
            path.addLine(to: CGPoint(x: 200, y: 20))  // End point
        }
        .stroke(.blue, lineWidth: 3)
        
        Path { path in
            path.move(to: CGPoint(x: 100, y: 20))
            path.addLine(to: CGPoint(x: 20, y: 180))
            path.addLine(to: CGPoint(x: 180, y: 180))
            path.closeSubpath()   // Close shape
        }
        .stroke(.red, lineWidth: 3)
    }
}

#Preview {
    PathView()
}
