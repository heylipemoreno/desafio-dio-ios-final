//
//  City.swift
//  app-final-2
//
//  Created by Felipe Moreno on 20/10/23.
//

import Foundation

struct City: Codable, Identifiable {
    var id = UUID()
    
    let name: String
    let lat: Double
    let lon: Double
    
    static var placeholder: [City] {
        [
            City(name: "New York", lat: 0.0, lon: 0.0),
            City(name: "Washington", lat: 0.0, lon: 0.0),
            City(name: "San Francisco", lat: 0.0, lon: 0.0),
        ]
    }
}
