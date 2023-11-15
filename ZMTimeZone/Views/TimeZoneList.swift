//
//  TimeZoneList.swift
//  ZMTimeZone
//
//  Created by doss-zstch1212 on 03/11/23.
//

import SwiftUI

struct TimeZoneList: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationSplitView {
            VStack {
                TextField("Search", text: $searchText)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .textFieldStyle(.roundedBorder)

                
                // List to display the filtered results
                List {
                    ForEach(cities.filter { searchText.isEmpty || $0.name.range(of: searchText, options: .caseInsensitive) != nil || $0.country.range(of: searchText, options: .caseInsensitive) != nil || $0.timeZoneName.range(of: searchText, options: .caseInsensitive) != nil }, id: \.self) { city in
                        TimeZoneRow(city: city)
                            .frame(height: 38)
                    }
                }
                .listStyle(.inset)
            .navigationTitle("Timezones")
            }
        } detail: {
            Text("Choose Timezone")
        }
    }
}

#Preview {
    TimeZoneList()
}
