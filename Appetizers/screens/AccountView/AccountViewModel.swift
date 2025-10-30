//
//  AccountViewModel.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 27/10/25.
//

import SwiftUI
import Combine

final class AccountViewModel: ObservableObject {
    @Published var name = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthday: Date = Date()
    @Published var Napkins: Bool = false
    @Published var refills: Bool = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !name.isEmpty, !lastName.isEmpty, !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else{
            alertItem = AlertContext.invalidMail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Changes has been saved successfully")
    }
}
