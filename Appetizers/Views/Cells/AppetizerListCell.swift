//
//  AppetizerListCell.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 16/10/25.
//

import SwiftUI

struct AppetizerListCell: View {
    let receta: Appetizer
    
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: receta.imageURL)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading, spacing: 5) {
                Text(receta.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text("$\(String(format: "%.2f", receta.price))")
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
    }
}

#Preview {
    AppetizerListCell(receta: MockData.sampleAppetizer)
}
