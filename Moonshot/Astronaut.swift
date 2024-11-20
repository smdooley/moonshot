//
//  Astronaut.swift
//  Moonshot
//
//  Created by Sean Dooley on 18/11/2024.
//

import Foundation

struct Astronaut: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
}
