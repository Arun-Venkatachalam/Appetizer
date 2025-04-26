//
//  ContentView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
                    Label("Home", systemImage: "house")
                }
            
            AccountView()
                .tabItem {
//                    Image(systemName: "person.crop.circle")
//                    Text("Account")
                    Label("Account", systemImage: "person.crop.circle")
                }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.items.count)
        }
        //.accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView().environmentObject(Order())
}
