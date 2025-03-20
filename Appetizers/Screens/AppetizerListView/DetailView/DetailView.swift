//
//  DetailView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 18/3/2025.
//

import SwiftUI

struct DetailView: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        VStack {
            Image("asian-flank-steak")
                .resizable()
                .frame(width: 300, height: 220)
                .scaledToFit()
            
            VStack() {
                Text(appetizer.name)
                    .fontWeight(.semibold)
                    .font(.title)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    //.fontWeight(.ultraLight)
                    //.fixedSize(horizontal: false, vertical: true)
                    .padding()
                    //.lineLimit(2)
                
                HStack {
                    VStack(spacing: 10) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.calories)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    .padding()
                    
                    VStack(spacing: 10) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.carbs)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    .padding()
                    
                    VStack(spacing: 10) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.protein)")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    .padding()
                }
                
                Button(action: {
                    print("Add to Card Tapped")
                }, label: {
                    Text("$\(appetizer.price, specifier: "%.2f") - Add To Order")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: 250, height: 50)
                        .foregroundStyle(.white)
                        .background(.brandPrimary)
                        .clipShape(.buttonBorder)
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
        } label: {
            Image(systemName: "xmark.circle.fill")
               .resizable()
               .frame(width: 30, height: 30)
               .foregroundColor(.white)
               //.background(.black)
        }, alignment: .topTrailing)
    }
}
    
#Preview {
    DetailView(appetizer: MockData.sampleAppetizer)
}
