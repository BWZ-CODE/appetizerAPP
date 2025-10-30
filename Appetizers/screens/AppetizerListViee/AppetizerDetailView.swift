//
//  AppetizerDetailView.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 24/10/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    let receta: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        
        VStack{
            AppetizerRemoteImage(urlString: receta.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 340, height: 225)
            Text(receta.name)
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .padding()
            
            Text(receta.description)
                .frame(height: 100)
                .multilineTextAlignment(.center)
                .font(.body)
                .fontDesign(.rounded)
                .padding()
            
            HStack(spacing:50){
                VStack{
                    Text("Calories")
                    Text("\(receta.calories)")
                }
                VStack{
                    Text("Carbs")
                    Text("\(receta.carbs)")
                }
                VStack{
                    Text("Protein")
                    Text("\(receta.protein)")
                }
            }
            .padding()
            
            Button {
                isShowingDetail = false
                order.add(receta)
            } label: {
                Text("$\(receta.price, specifier: "%.2f") - ADD TO CART")
                    .frame(width: 260, height: 50)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .background(Color.brandPrimary)
                    .cornerRadius(20)
                    .padding()
            }
            .padding()
            
            
        }
        .frame(width: 340, height: 625)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button(action: {
            isShowingDetail = false
        }, label: {
            Image(systemName: "xmark")
                .frame(width: 30, height: 30)
                .background(Color.white)
                .foregroundStyle(.black)
                .clipShape(.circle)
                .padding()
        }), alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(receta: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
