//
//  alert.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 21/10/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server error"),
                                           message: Text("Invalid response from the server. Please try again later"),
                                           dismissButton: .default(Text("ok")))
    
    static let invalidURL = AlertItem(title: Text("Invalid Scan Type"),
                                      message: Text("The value scanned is not valid. This app scans EAN"),
                                      dismissButton: .default(Text("ok")))
    
    static let unnableToComplete = AlertItem(title: Text("Invalid Scan Type"),
                                             message: Text("The value scanned is not valid. This app scans EAN"),
                                             dismissButton: .default(Text("ok")))
    
    
    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(title: Text("Something is empty"),
                                             message: Text("You need to fill in all the fields"),
                                             dismissButton: .default(Text("ok")))
    static let invalidMail = AlertItem(title: Text("Check your email"),
                                             message: Text("You need to check your email please"),
                                             dismissButton: .default(Text("Sorry")))
    
    
    
    
    
}

