//
//  LinearGradientView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct LinearGradientView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
            .fill(LinearGradient(colors: [Color.red, Color.green], startPoint: .top, endPoint: .bottom))
            .frame(width: 100, height: 100)
        
        
    }
}

#Preview {
    LinearGradientView()
}
