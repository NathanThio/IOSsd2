//
//  ResultsView.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

struct ResultsView: View {
    @Binding var selectedCountry: String
    @State var selectedMatch: String
    @State var selectedLocation: String
    
    var body: some View {
        NavigationSplitView {
            ListStadiumView(selectedLocation: $selectedLocation)
        } content: {
            ListScoreView(selectedLocation: $selectedLocation, selectedMatch: $selectedMatch, selectedCountry: $selectedCountry)
        } detail: {
            DetailGameView()
        }
        
    }
}



