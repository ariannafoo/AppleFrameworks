//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Arianna Foo on 2025-03-19.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn more")
}
