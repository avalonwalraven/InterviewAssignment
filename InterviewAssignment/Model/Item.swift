//
//  Item.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation

struct Item: Codable, Identifiable {
    let id: String
    let cost: Double
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case cost = "cost"
    }
}

