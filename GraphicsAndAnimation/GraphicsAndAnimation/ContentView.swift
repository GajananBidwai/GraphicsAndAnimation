//
//  ContentView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    var gradient = Gradient(colors: [Color.red, Color.green])
    
    var body: some View {
        VStack {
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
            .padding()
            
            Button(action: {
                isActive.toggle()
            }, label: {
                Text(isActive ? "Active" : "InActive")
                    .foregroundStyle(.white)
                    .font(.system(size: 24, weight: .bold, design: .default))
            })
            
            .frame(width: 200, height: 50)
            .background(isActive ? Color.green : Color.red, in: RoundedRectangle(cornerSize: CGSize(width: 25, height: 25)))
            
            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
                .fill(LinearGradient(colors: [Color.red, Color.green], startPoint: .top, endPoint: .bottom))
                .frame(width: 100, height: 100)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
