//
//  ResultsView.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

struct ResultsView: View {
    @State var selectedCountry: String = ""
    var body: some View {
        NavigationSplitView {
            ListStadiumView()
        } content: {
            ListScoreView(selectedCountry: $selectedCountry)
        } detail: {
            DetailGameView()
        }
    }
}
