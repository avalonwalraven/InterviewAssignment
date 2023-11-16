//
//  URLSession.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation

extension URLSession {
    
    func object<Object: Codable>(for request: URLRequest) async throws -> Object {
        let (data, _) = try await data(for: request)
        
        return try JSONDecoder().decode(Object.self, from: data)
    }
}
