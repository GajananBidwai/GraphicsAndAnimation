//
//  ContentView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 10/12/25.
//

import SwiftUI
import Charts

struct ContentView: View {
    @State var isActive: Bool = false
    var gradient = Gradient(colors: [Color.red, Color.green])
    @State private var selectedDay: String?
    @State var isClicked = false
    @Namespace private var myAnimation
    
    var body: some View {
        VStack {
//            ScrollView(.horizontal,showsIndicators: false) {
//                HStack() {
//                    Rectangle()
//                        .frame(width: 100, height: 100)
//                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
//                        .frame(width: 100, height: 100)
//                    Circle()
//                        .frame(width: 100, height: 100)
//                    Ellipse()
//                        .frame(width: 100, height: 50)
//                    Capsule()
//                        .frame(width: 100, height: 50)
//                }
//            }
//            .padding()
            
//            Button(action: {
//                isActive.toggle()
//            }, label: {
//                Text(isActive ? "Active" : "InActive")
//                    .foregroundStyle(.white)
//                    .font(.system(size: 24, weight: .bold, design: .default))
//            })
//            
//            .frame(width: 200, height: 50)
//            .background(isActive ? Color.green : Color.red, in: RoundedRectangle(cornerSize: CGSize(width: 25, height: 25)))
            
//            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
//                .fill(LinearGradient(colors: [Color.red, Color.green], startPoint: .top, endPoint: .bottom))
//                .frame(width: 100, height: 100)
//            
//            
//            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
//                .fill(isActive ? RadialGradient(colors: [.red, .green], center: .center, startRadius: 0, endRadius: 50) : RadialGradient(colors: [.green, .red], center: .center, startRadius: 0, endRadius: 50))
//                .frame(width: isActive ? 150 : 100, height: isActive ? 150 : 100)
                
            
//            MeshGradient(
//                width: 3,
//                height: 3,
//                points: [
//                    .init(x: 0.0, y: 0.0),
//                    .init(x: 1.0, y: 0.0),
//                    .init(x: 2.0, y: 0.0),
//                    
//                    .init(x: 0.0, y: 1.0),
//                    .init(x: 1.0, y: 1.0),
//                    .init(x: 2.0, y: 1.0),
//                    
//                    .init(x: 0.0, y: 2.0),
//                    .init(x: 1.0, y: 2.0),
//                    .init(x: 2.0, y: 2.0),
//                ],
//                colors: [
//                    .red, .blue, .yellow,
//                    .orange, .mint, .purple,
//                    .pink, .green, .black
//                ]
//            )
//            .frame(width: 100, height: 100)
//            .cornerRadius(20)
            
//            RoundedRectangle(cornerSize: CGSize(width: 25, height: 25))
//                .foregroundStyle(.shadow(.drop(radius: 5)))
//                .frame(width: 100, height: 100)
//
//                
//            RoundedRectangle(cornerRadius: 25)
//                .fill(.image(Image(uiImage: .actions)))
//                .frame(width: 100, height: 100)

//            Path { path in
//                path.move(to: CGPoint(x: 20, y: 20))      // Start point
//                path.addLine(to: CGPoint(x: 200, y: 20))  // End point
//            }
//            .stroke(.blue, lineWidth: 3)
            
//            Path { path in
//                path.move(to: CGPoint(x: 100, y: 20))
//                path.addLine(to: CGPoint(x: 20, y: 180))
//                path.addLine(to: CGPoint(x: 180, y: 180))
//                path.closeSubpath()   // Close shape
//            }
//            .stroke(.red, lineWidth: 3)
            
//            Triangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            
//            Image(systemName: "trash")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .rotation3DEffect(Angle(degrees: 60), axis: (x: 1.1, y: 1.1, z: 1.1))
                
            
           
//          BAR CHART
//            Chart(weeklySales) { item in
//                BarMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.blue)
//            }
//            .frame(height: 250)

//          LINE CHART
//            Chart(weeklySales) { item in
//                LineMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.red)
//                .interpolationMethod(.monotone)
//            }
//            .frame(height: 250)

            
//          AREA CHART
            
//            Chart(weeklySales) { item in
//                AreaMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.linearGradient(
//                    colors: [.blue.opacity(0.3), .blue],
//                    startPoint: .top,
//                    endPoint: .bottom
//                ))
//            }
//            .frame(height: 250)
            
//          POINT CHART
//            Chart(weeklySales) { item in
//                PointMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.purple)
//                .symbol(.circle)
//                .symbolSize(80)
//            }
//            .frame(height: 250)
            
            
//          COMBINED CHART
//            Chart(weeklySales) { item in
//                AreaMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.blue.opacity(0.2))
//                
//                LineMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.blue)
//                .lineStyle(.init(lineWidth: 3))
//                
//                PointMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(.blue)
//                .symbol(.circle)
//            }
//            .frame(height: 250)
            
//            RECTANGLE MARK
               
//            Chart(weeklySales) { item in
//                RectangleMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value),
//                    width: .automatic,
//                    height: .automatic
//                )
//                .foregroundStyle(by: .value("Sales", item.value))
//            }
//            .frame(height: 250)
            
//          Chart Modifiers
            
//            Chart(weeklySales) { item in
//                BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
//            }
//            .chartXAxis {
//                AxisMarks(position: .bottom)
//            }
//            .chartYAxis {
//                AxisMarks(position: .leading)
//            }
//            .chartPlotStyle { plot in
//                plot
//                    .background(Color(.systemGray6))
//                    .border(.gray, width: 1)
//            }
////            // Use overlay to detect taps or show drag lines.
////
//            .chartOverlay { proxy in
//                GeometryReader { geo in
//                    Rectangle().fill(.clear)
//                        .contentShape(Rectangle())
//                        .onTapGesture { location in
//                            let xValue = proxy.value(atX: location.x, as: String.self)
//                            print("Tapped on:", xValue ?? "")
//                        }
//                }
//            }
//            .chartBackground { _ in
//                Color.yellow.opacity(0.1)
//            }
//            .chartLegend(.hidden)

//SwiftUI Charts supports interactive selection.
//            Chart(weeklySales) { item in
//                BarMark(
//                    x: .value("Day", item.day),
//                    y: .value("Sales", item.value)
//                )
//                .foregroundStyle(selectedDay == item.day ? .red : .blue)
//            }
//            .chartOverlay { proxy in
//                Rectangle().fill(.clear).contentShape(Rectangle())
//                    .onTapGesture { location in
//                        if let value: String = proxy.value(atX: location.x) {
//                            print(value)
//                            selectedDay = value
//                                
//                            print(selectedDay)
//                            
//                        }
//                    }
//                    .foregroundStyle((selectedDay != nil) ? Color.green : Color.red)
//                
//            }
            
//            VStack {
//                Text("Hello SwiftUI")
//                    .font(.largeTitle)
//                    .padding()
//                    .background(.yellow)
//                    .cornerRadius(12)
//                
//                Button("Export as Image") {
//                    createImage()
//                }
//            }
            
//          Transition
//            Button {
//              //  isClicked.toggle()
//                withAnimation(.easeInOut) {
//                    isClicked.toggle()
//                }
//            } label: {
//                Text("Animate the transition")
//                    
//            }.padding()
//            if isClicked {
//                Text("Animate the transition")
////                    .transition(.scale.animation(.default))
////                    .transition(.slideAndFade)
////                    .transition(.offset(x: 400, y: 0))
//                
//            }
//            HStack {
//                if !isClicked {
//                    Text("Left")
////                        .transition(.scale.animation(.default))
//                        .matchedGeometryEffect(id: "TextAnimation", in: myAnimation)
//                }
//                Spacer()
//                if isClicked {
//                    Text("Right")
////                        .transition(.scale.animation(.default))
//                        .matchedGeometryEffect(id: "TextAnimation", in: myAnimation)
//                }
//            }
//            Spacer()
            
            Button {
                isClicked.toggle()
            } label: {
                Text("Animate SF Symbol")
            }
            .padding()
            Image(systemName: "dot.radiowaves.forward")
//                .symbolEffect(.variableColor.iterative, options: .nonRepeating, isActive: isClicked)
                .symbolEffect(.bounce, options: .nonRepeating, isActive: isClicked)
//                .symbolEffect(.wiggle.custom(angle: 90), value: isClicked)
//                .symbolEffect(.pulse, value: isClicked)
//                .symbolEffect(.wiggle, value: isClicked)
//                .symbolEffect(.variableColor, value: isClicked)
                
                .font(.title)

        }
        .padding()
    }
    
//    func createImage() {
//        let renderer = ImageRenderer(
//            content: Text("Hello SwiftUI")
//                .font(.largeTitle)
//                .padding()
//                .background(.yellow)
//                .cornerRadius(12)
//        )
//        
//        if let uiImage = renderer.uiImage {
//            print("Image created:", uiImage)
//        }
//    }
    
}

extension AnyTransition {
    static var slideAndFade: AnyTransition {
        .move(edge: .bottom)
            .combined(with: .opacity)
    }
}


#Preview {
    ContentView()
}
