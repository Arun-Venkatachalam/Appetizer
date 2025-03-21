//
//  APButton.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 21/3/2025.
//

import SwiftUI

struct APButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    APButton(title: "Test Button")
}
