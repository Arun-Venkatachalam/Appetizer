//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 21/3/2025.
//

import SwiftUI

struct XDismissButton: View {
    
    var body: some View {
        Image(systemName: "xmark.circle.fill")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundColor(.white)
            //.background(.black)
    }
}

#Preview {
    XDismissButton()
}
