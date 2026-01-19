//
//  MatchedGeoMetryTransitionEffectView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct MatchedGeoMetryTransitionEffectView: View {
    @State private var isClicked: Bool = false
    @Namespace private var myAnimation
    
    var body: some View {
        Button {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        } label: {
            Text("Animate the transition")
                
        }.padding()
        
        HStack {
            if !isClicked {
                Text("Left")
                    .matchedGeometryEffect(id: "TextAnimation", in: myAnimation)
            }
            Spacer()
            if isClicked {
                Text("Right")
                    .matchedGeometryEffect(id: "TextAnimation", in: myAnimation)
            }
        }
    }
}

#Preview {
    MatchedGeoMetryTransitionEffectView()
}
