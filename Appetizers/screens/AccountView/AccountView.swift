//
//  AccountView.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 10/10/25.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.name)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Bithday", selection:$viewModel.birthday , displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                        print("Saved")
                    } label: {
                        Text("Save Changes")
                            .foregroundStyle(.brandPrimary)
                    }
                    
                    
                        
                }
                
                Section(header: Text("Request")){
                    Toggle("Extra Napkins", isOn: $viewModel.Napkins)
                    Toggle("Frequent Refills", isOn: $viewModel.refills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }.navigationTitle("My Account")
        }
        .alert(item: $viewModel.alertItem){
            alertItem in Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
