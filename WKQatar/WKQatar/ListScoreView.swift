//
//  ListScoreView.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

struct ListScoreView: View {
    @Binding var selectedLocation : String
    @Binding var selectedMatch : String
    @Binding var selectedCountry : String
    @Environment(WKResultsDatastore.self) private var wkResultDatastore
    
    var body: some View {
        List(wkResultDatastore.getAllResultByLocation(location: selectedLocation), id: \.self, selection: $selectedMatch) { match in
            Grid {
                GridRow {
                    HStack {
                        VStack {
                            Text(match.homeTeam)
                                .foregroundColor(match.homeTeam == selectedCountry ? .red : .primary)
                            
                            if let homeTeamScore = match.homeTeamScore {
                                Text(String(homeTeamScore))
                            }
                        }
                        
                        VStack {
                            Text("X")
                            if match.homeTeamScore != nil {
                                Text("-")
                            }
                        }
                        
                        VStack {
                            Text(match.awayTeam)
                                .foregroundColor(match.awayTeam == selectedCountry ? .red : .primary)
                            
                            if let awayTeamScore = match.awayTeamScore {
                                Text(String(awayTeamScore))
                            }
                        }
                    }
                }
            }
        }
    }
}
