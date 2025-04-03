//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Arianna Foo on 2025-03-19.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    } //ForEach
                } // LazyVGrid
            } // ScrollView
            .navigationTitle("🍎 Frameworks")
            // show this sheet whenever isShowingDetailView changes
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    } // body
}

#Preview {
    FrameworkGridView()
}
