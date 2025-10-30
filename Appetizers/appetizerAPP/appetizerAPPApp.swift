//
//  appetizerAPPApp.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 10/10/25.
//

import SwiftUI

@main
struct appetizerAPPApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
                
        }
    }
}
