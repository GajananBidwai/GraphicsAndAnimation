//
//  Rotation3DEffectView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct Rotation3DEffectView: View {
    var body: some View {
        Image(systemName: "trash")
            .resizable()
            .frame(width: 100, height: 100)
            .rotation3DEffect(Angle(degrees: 60), axis: (x: 1.1, y: 1.1, z: 1.1))
    }
}

#Preview {
    Rotation3DEffectView()
}
