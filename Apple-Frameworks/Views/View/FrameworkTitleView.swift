//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Arianna Foo on 2025-03-21.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // ability to shrink
            .minimumScaleFactor(0.6) // only shrink to 60%
        } // VStack
        .padding()
    }
}
#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
