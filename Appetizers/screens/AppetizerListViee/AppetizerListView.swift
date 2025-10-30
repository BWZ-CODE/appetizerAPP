//
//  AppetizerListView.swift
//  appetizerAPP
//
//  Created by Miguel Angel Bohorquez on 10/10/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?
    
    
    var body: some View {
        ZStack{
            NavigationView {
                List(viewModel.appetizers) { receta in
                    AppetizerListCell(receta: receta)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            selectedAppetizer = receta
                            isShowingDetail = true
                        }
                }
                .navigationTitle(Text("Appetizers🍟🍕"))
                .disabled(isShowingDetail ? true : false)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            
            if isShowingDetail {
                AppetizerDetailView(receta: selectedAppetizer!, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }.alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
        
    }
    
    
}

#Preview {
    AppetizerListView()
}
