//
//  RadialGradientView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct RadialGradientView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
            .fill(isActive ? RadialGradient(colors: [.red, .green], center: .center, startRadius: 0, endRadius: 50) : RadialGradient(colors: [.green, .red], center: .center, startRadius: 0, endRadius: 50))
            .frame(width: isActive ? 150 : 100, height: isActive ? 150 : 100)
    }
}

#Preview {
    RadialGradientView()
}
