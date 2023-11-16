//
//  Purchaser.swift
//  InterviewAssignment
//
//  Created by Avalon Walraven on 11/15/23.
//

import Foundation

struct Purchaser: Codable, Identifiable {
    let id: String
    let name: String
    let address: String
    let emailAddress: String
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case address = "address"
        case emailAddress = "email_address"
    }
   
}
