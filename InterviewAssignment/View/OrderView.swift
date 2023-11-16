//
//  OrderView.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject var viewModel = OrderViewModel()
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            if isLoading {
                ProgressView("Loading...")
            } else {
                List(viewModel.orders) { order in
                    listItem(for: order)
                        .listRowSeparatorTint(Color.indigo)
                        .listRowBackground(Color.indigo.opacity(0.15))
                }
                .navigationTitle("Orders")
            }
        }
        .onAppear {
            isLoading = true
            viewModel.getOrders {
                isLoading = false
            }
        }

    }
    
    func listItem(for order: Order) -> some View {
        VStack(spacing: 4) {
            listItemDetails(label: "Item Count:", information: order.items.count.description)
            listItemDetails(label: "Total Cost:", information: viewModel.totalCost(for: order).formatted(.currency(code: "USD")))
            listItemDetails(label: "Name:", information: order.purchaser.name)
            listItemDetails(label: "Email:", information: order.purchaser.emailAddress)
            listItemDetails(label: "Address:", information: order.purchaser.address)
        }
    }
    
    func listItemDetails(label: String, information: String) -> some View {
        HStack(alignment: .top) {
            Text(label)
                .bold()
            Spacer()
            Text(information)
                .lineLimit(2)
                .multilineTextAlignment(.trailing)
        }
    }
    
}

#Preview {
    OrderView()
}
