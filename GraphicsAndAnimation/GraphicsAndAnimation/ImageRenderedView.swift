//
//  ImageRendered.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 18/01/26.
//

import SwiftUI

struct ImageRenderedView: View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
                .font(.largeTitle)
                .padding()
                .background(.yellow)
                .cornerRadius(12)
            
            Button("Export as Image") {
                createImage()
            }
        }
        
    }
    
    func createImage() {
        let renderer = ImageRenderer(
            content: Text("Hello SwiftUI")
                .font(.largeTitle)
                .padding()
                .background(.yellow)
                .cornerRadius(12)
        )
        
        if let uiImage = renderer.uiImage {
            print("Image created:", uiImage)
        }
    }
}

#Preview {
    ImageRenderedView()
}
