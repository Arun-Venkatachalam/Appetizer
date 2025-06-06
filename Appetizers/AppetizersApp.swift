//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
