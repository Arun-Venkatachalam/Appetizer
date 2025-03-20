//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewmodel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewmodel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .listStyle(PlainListStyle())
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear() {
                viewmodel.getAppetizers()
            }
            
            if viewmodel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewmodel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
