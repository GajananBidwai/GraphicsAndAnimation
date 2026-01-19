//
//  TraingleView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct TraingleView: View {
    var body: some View {
        Triangle()
            .fill(.red)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    TraingleView()
}
