//
//  City.swift
//  ZMTimeZone
//
//  Created by doss-zstch1212 on 03/11/23.
//

import Foundation

struct City: Codable, Identifiable, Hashable {
    /// Name of the city
    var name: String
    var country: String
    /// TimeZone name. eg. Africa/Accra
    var timeZoneName: String
    
    var id: String {
        name
    }
    
    // Provide a hash value based on the properties that uniquely identify the city
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(country)
        hasher.combine(timeZoneName)
    }
}
