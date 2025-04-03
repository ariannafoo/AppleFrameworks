//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Arianna Foo on 2025-03-21.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label)) // .label support light/dark more
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        } // HStack
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
