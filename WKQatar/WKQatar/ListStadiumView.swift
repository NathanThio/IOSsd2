//
//  ListStadiumView.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

struct ListStadiumView: View {
    var body: some View {
        let wkResultDatastore = WKResultsDatastore()
        @State var selectedLocation: String = ""
        
        NavigationStack {
            List(wkResultDatastore.getAllLocations(),id: \.self, selection: $selectedLocation) { country in
                    if(selectedLocation == country){
                        Text(country).foregroundStyle(Color.red).selectionDisabled()
                    }else{
                        Text(country)
                    }
                }
        }
    }
}

#Preview {
    ListStadiumView()
}
