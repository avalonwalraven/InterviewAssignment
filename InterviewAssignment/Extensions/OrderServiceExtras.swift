//
//  OrderServiceExtras.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation

extension OrderService {
    
    struct ResultsWrapper<Object: Codable>: Codable{
        let results: [Object]
    }
    
    enum APIErrorHandler: Error {
        case invalidURL
        case noDataFound
    }
    
    
    enum Constants {
        static let apiURL = "https://dtmad-store.up.railway.app/api/v1/orders?count=50"
        static let apiKey = "UndYxaTF7VnzVGQRYjAvzgtwvKXbrbBrDtZ5KQQbj0j6GXW1BU1BRk7aTrcvATHu"
        static let apiHeaderKey = "X-Api-Key"
    }
    
}
