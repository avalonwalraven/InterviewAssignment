//
//  OrderViewModel.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation

class OrderViewModel: ObservableObject {
    
    @Published var orders = [Order]()
    
    func getOrders(completion: @escaping () -> Void) {
        Task { [weak self] in
            do {
                let results = try await OrderService.fetchOrders()
                
                await MainActor.run { [weak self] in
                    self?.orders = results
                    completion()
                }
                
            } catch {
                completion()
                print("Failed to fetch orders: \(error)")
            }
        }
    }
    
    func totalCost(for order: Order) -> Double {
        var finalCost = 0.0
        
        for item in order.items {
            finalCost += item.cost
        }
        
        return finalCost
    }
}
