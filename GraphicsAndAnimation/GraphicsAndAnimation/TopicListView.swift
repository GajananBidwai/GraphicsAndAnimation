//
//  TopicListView.swift
//  GraphicsAndAnimation
//
//  Created by Neosoft on 17/01/26.
//

import SwiftUI

struct TopicsListView: View {
    @StateObject private var viewModel = TopicsViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.topics) { topic in
                NavigationLink {
                    destinationView(for: topic)
                } label: {
                    Text(topic.name)
                        .font(.headline)
                }
            }
            .navigationTitle("Graphics and Animation")
            .onAppear {
                viewModel.loadTopics()
            }
        }
    }
    
    @ViewBuilder
    func destinationView(for topic: Topic) -> some View {
        switch topic.name {
        case "AllShapes":
            AllShapes()

        case "ToggleView":
            ToggleView()

        case "LinearGradientView":
            LinearGradientView()
            
        case "RadialGradientView":
            RadialGradientView()

        case "MeshGradientView":
            MeshGradientView()

        case "PathView":
            PathView()

        case "TraingleView":
            TraingleView()
            
        case "BarChartView":
            BarChartView()
                        
        case "LineChartView":
            LineChartView()
            
        case "AreaChartView":
            AreaChartView()
            
        case "PointChartView":
            PointChartView()
            
        case "CombinedChartView":
            CombinedChartView()
            
        case "RectangleMarkView":
            RectangleMarkView()
            
        case "ChartInteractiveSelection":
            ChartInteractiveSelection()
            
        case "ImageRenderedView":
            ImageRenderedView()
    
        case "NormalTransitionView":
            NormalTransitionView()
            
            
        case "MatchedGeoMetryTransitionEffectView":
            MatchedGeoMetryTransitionEffectView()
            
        default:
            Text("Coming Soon")
        }
    }

}

#Preview {
    TopicsListView()
}
