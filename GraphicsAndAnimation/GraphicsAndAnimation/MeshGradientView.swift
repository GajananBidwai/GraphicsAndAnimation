//
//  MeshGradientView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct MeshGradientView: View {
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: [
                .init(x: 0.0, y: 0.0),
                .init(x: 1.0, y: 0.0),
                .init(x: 2.0, y: 0.0),
                
                .init(x: 0.0, y: 1.0),
                .init(x: 1.0, y: 1.0),
                .init(x: 2.0, y: 1.0),
                
                .init(x: 0.0, y: 2.0),
                .init(x: 1.0, y: 2.0),
                .init(x: 2.0, y: 2.0),
            ],
            colors: [
                .red, .blue, .yellow,
                .orange, .mint, .purple,
                .pink, .green, .black
            ]
        )
        .frame(width: 100, height: 100)
        .cornerRadius(20)
       
    }
}

#Preview {
    MeshGradientView()
}
