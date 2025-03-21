//
//  NutritionInfoView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 22/3/2025.
//

import SwiftUI

struct NutritionInfoView: View {
    
    var title: String
    var value: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
        .padding()
    }
}

#Preview {
    NutritionInfoView(title: "Calories", value: 99)
}
