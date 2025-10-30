//
//  orderView.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 10/10/25.
//

import SwiftUI

struct orderView: View {
    @EnvironmentObject var order: Order
    
    var receta : Appetizer
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(receta: appetizer)
                        }.onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.sidebar)
                    Spacer()
                    Button{
                        print("Order placed")
                    }label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                            .frame(width: 350, height: 50)
                            .background(Color(.brandPrimary))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                }
                if order.items.isEmpty{
                    EmptyState(ImageName: "empty", TextTitle: "Your cart is empty")
                }
                
            }
            .navigationTitle("🧾 Orders")
        }

        
    }
    
}




#Preview {
    orderView(receta: MockData.sampleAppetizer)
        .environmentObject(Order())
}
