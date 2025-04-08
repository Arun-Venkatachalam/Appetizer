//
//  DetailView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 18/3/2025.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var order: Order
    
    var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            ScrollView {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .frame(width: 300, height: 220)
                    .scaledToFit()
                
                VStack() {
                    
                    Text(appetizer.name)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                        .font(.title)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text(appetizer.description)
                        .multilineTextAlignment(.center)
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                    
                    HStack {
                        NutritionInfoView(title: "Calories" ,
                                          value: appetizer.calories)
                        NutritionInfoView(title: "Carbs" ,
                                          value: appetizer.carbs)
                        NutritionInfoView(title: "Protein" ,
                                          value: appetizer.protein)
                    }
                    
                    Button(action: {
                        print("Add to Card Tapped")
                        order.addItems(appetizer)
                        isShowingDetail = false
                    }, label: {
                        APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
                    })
                    .padding(.bottom)
                }
            }
            .background(Color(.systemBackground))
            .frame(width: 300, height: 520)
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(Button {
                print("X button is tapped")
                isShowingDetail = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing)
            .scrollIndicators(ScrollIndicatorVisibility.hidden)
        }
    }
}

#Preview {
    DetailView(appetizer: MockData.sampleAppetizer,
               isShowingDetail: .constant(true))
}
