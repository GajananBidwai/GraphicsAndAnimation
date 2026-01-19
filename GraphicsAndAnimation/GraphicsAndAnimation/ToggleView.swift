//
//  Toggle.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct ToggleView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        Button(action: {
            isActive.toggle()
        }, label: {
            Text(isActive ? "Active" : "InActive")
                .foregroundStyle(.white)
                .font(.system(size: 24, weight: .bold, design: .default))
        })
        
        .frame(width: 200, height: 50)
        .background(isActive ? Color.green : Color.red, in: RoundedRectangle(cornerSize: CGSize(width: 25, height: 25)))
    }
}

#Preview {
    ToggleView()
}
