//
//  Order.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation

struct Order: Codable, Identifiable {
    let id: String
    let items: [Item]
    let purchaser: Purchaser
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case items = "items"
        case purchaser = "purchaser"
    }
}

