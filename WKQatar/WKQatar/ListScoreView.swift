//
//  ListScoreView.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

struct ListScoreView: View {
    
    var wkResultDatastore = WKResultsDatastore()
    @State var selectedCountry: String = ""
    
    var body: some View {
        
        NavigationStack {
            
        }
    }
}

#Preview {
    ListScoreView(selectedCountry: $selectedCountry)
}
