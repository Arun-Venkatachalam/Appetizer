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
    
    // MARK: - Network Alerts
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
    
    // MARK: - AccontView Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all the fields in the form are filled."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail      = AlertItem(title: Text("Invalid Email"),
                                           message: Text("Please ensure you enter the correct email address."),
                                           dismissButton: .default(Text("OK")))
    
    
    static let saveUserChanges       = AlertItem(title: Text("Saved"),
                                           message: Text("User details have been saved sucessfully"),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidUserData       = AlertItem(title: Text("Invalid Data"),
                                           message: Text("User details is not saved or retreived properly."),
                                           dismissButton: .default(Text("OK")))
}

