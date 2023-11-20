//
//  APIHandler.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation


struct OrderService {
    
    static func fetchOrders() async throws -> [Order] {
        guard let url = URL(string: Constants.apiURL)
        else { throw APIErrorHandler.invalidURL }
        
        var request = URLRequest(url: url)
        request.setValue(Constants.apiKey, forHTTPHeaderField: Constants.apiHeaderKey)
        
        let result: ResultsWrapper<Order> = try await URLSession.shared.object(for: request)
        return result.results
    }
    
}

