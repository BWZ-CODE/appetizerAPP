//
//  ContentView.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 10/10/25.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            orderView(receta: MockData.sampleAppetizer)
                .tabItem {
                    Label("Order", systemImage: "cart")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }.accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
