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
                        //.listRowSeparator(.automatic)
                        //.listRowSeparator(.visible, edges: .all)
                        //.listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewmodel.selectedAppetizer = appetizer
                            viewmodel.isShowingDetail = true
                        }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("🍟 Appetizers")
                .disabled(viewmodel.isShowingDetail)
            }
            .onAppear() {
                viewmodel.getAppetizers()
            }
            .blur(radius: viewmodel.isShowingDetail ? 20 : 0)
            
            if viewmodel.isShowingDetail {
                if let selectedAppetizer = viewmodel.selectedAppetizer {
                    DetailView(appetizer: selectedAppetizer, isShowingDetail: $viewmodel.isShowingDetail)
                }
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
