//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Sean Dooley on 18/11/2024.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
//        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
//            fatalError("Failed to decode \(file) from bundle.")
//        }
        
//        return loaded
        
        do {
            return try decoder.decode([String: Astronaut].self, from: data)
        }
        catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue)' - \(context.debugDescription)")
        }
        catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed to decode \(file) from bundle due to type mismatch \(context.debugDescription)")
        }
        catch DecodingError.valueNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing '\(type)' value - '\(context.debugDescription)'")
        }
        catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(file) from bundle because it appears to be invalid JSON.")
        }
        catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
    }
}
