//
//  TimeZoneRow.swift
//  ZMTimeZone
//
//  Created by doss-zstch1212 on 03/11/23.
//

import SwiftUI

struct TimeZoneRow: View {
    var city: City
    
    var body: some View {
        HStack {
            Text("\(city.name), \(city.country).")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TimeZoneRow(city: cities[0])
}
