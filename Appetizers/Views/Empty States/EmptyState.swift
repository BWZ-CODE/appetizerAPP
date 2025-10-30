//
//  EmptyState.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 29/10/25.
//

import SwiftUI

struct EmptyState: View {
    let ImageName: String
    let TextTitle: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
            VStack{
                Image(ImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    
                Text(TextTitle)
                    .font(.title2)
                    .foregroundStyle(.secondary)
                    .bold()
                    .padding()
            }
            .offset(x: 0, y: 0)
        }
    }
}

#Preview {
    EmptyState(ImageName: "empty", TextTitle: "No orders yet")
}
