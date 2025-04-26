//
//  AccountView.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 16/3/2025.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewmodel = AccountViewModel()
    @FocusState private var focusTextField: FocusTextField?
    
    enum FocusTextField {
        case firsName, lastName, email
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $viewmodel.user.firstName)
                        .focused($focusTextField, equals: .firsName)
                        .onSubmit { focusTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewmodel.user.lastName)
                        .focused($focusTextField, equals: .lastName)
                        .onSubmit { focusTextField = .email }
                        .submitLabel(.next)
                    
                    TextField("Email", text: $viewmodel.user.email)
                        .focused($focusTextField, equals: .email)
                        .onSubmit { focusTextField = nil }
                        .submitLabel(.continue)
                    
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)
                    
                    DatePicker("Birthday",
                               selection: $viewmodel.user.date,
                               displayedComponents: .date)
                    //.foregroundStyle(.brandPrimary)
                    .tint(.brandPrimary)
                    
                    Button {
                        viewmodel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .foregroundStyle(.brandPrimary)
                    }
  
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $viewmodel.user.extraNapkin)
                    Toggle("Frequent Refills", isOn: $viewmodel.user.frequentRefills)
                } header: {
                    Text("Requests")
                }
                .tint(.brandPrimary)
            }
            .navigationTitle("👨🏻 Account")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") {
                        focusTextField = nil
                    }
                }
            }
        }
        .onAppear(perform: {
            viewmodel.retrieveUser()
        })
        .alert(item: $viewmodel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
