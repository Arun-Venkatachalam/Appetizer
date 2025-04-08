//
//  OrderView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items, id: \.self) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Place order button is tapped")
                    } label: {
                        APButton(title: "$ \(order.totalPrice,  specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 20)
                    
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in the order.\n Please add an appetizer!.")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
