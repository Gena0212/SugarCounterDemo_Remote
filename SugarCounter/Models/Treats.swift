//
//  Treats.swift
//  SugarCounter
//
//  Created by User on 2024-01-14.
//

import Foundation

struct Treats: Codable, Identifiable {
    let id: String
    let title: String
    let dateConsumed: TimeInterval
    let createdDate: TimeInterval


}
