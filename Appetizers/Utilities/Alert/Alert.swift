//
//  Alert.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 17/3/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                          message: Text("There was an issue connecting the server. If the problem presits, please contact support."),
                                          dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                          message: Text("Invalid response from the server, please try again sometime"),
                                          dismissButton: .default(Text("OK")))
     
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                          message: Text("The data recevied from the server is invalid. Please contact support"),
                                          dismissButton: .default(Text("OK")))
    
    static let unableToComplete  = AlertItem(title: Text("Server Error"),
                                           message: Text("Unable to complete the request. Please check the internet connection"),
                                           dismissButton: .default(Text("OK")))
    
}

