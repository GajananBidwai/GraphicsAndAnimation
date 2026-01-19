//
//  AllShapes.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 17/01/26.
//

import SwiftUI

struct AllShapes: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack() {
                Rectangle()
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                    .frame(width: 100, height: 100)
                Circle()
                    .frame(width: 100, height: 100)
                Ellipse()
                    .frame(width: 100, height: 50)
                Capsule()
                    .frame(width: 100, height: 50)
            }
        }
    }
}

#Preview {
    AllShapes()
}
