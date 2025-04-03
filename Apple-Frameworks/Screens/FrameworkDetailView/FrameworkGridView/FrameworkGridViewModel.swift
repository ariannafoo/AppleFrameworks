//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Arianna Foo on 2025-03-19.
//

import SwiftUI

// If you're not going to subclass your class, make it final
final class FrameworkGridViewModel: ObservableObject {
    
    // true when selectedFramework changes
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    // when this is true we'll show detail view
    // this variable needs to be listening for this
    // we use @Published for this
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
