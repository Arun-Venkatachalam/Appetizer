//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 27/3/2025.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }

        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("Save changes button clicked")
    }
}
