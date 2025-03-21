//
//  AccountView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var date = Date()
    @State private var extraNapkin = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)
                    
                    DatePicker("Birthday",
                               selection: $date,
                               displayedComponents: .date)
                    //.foregroundStyle(.brandPrimary)
                    .tint(.brandPrimary)
                    
                    Button {
                        print("Save Changes button clicked")
                    } label: {
                        Text("Save Changes")
                    }
  
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $extraNapkin)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                } header: {
                    Text("Requests")
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("👨🏻 Account")
        }
    }
}

#Preview {
    AccountView()
}
