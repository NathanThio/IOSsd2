//
//  ContentView.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedCountry: String = ""
    var wkResultDatastore = WKResultsDatastore()

    var body: some View {
        VStack {
            Text("⚽️ WK QATAR 2022 ⚽️")
                .font(.largeTitle)
            Text("Select your favorite team...")
                .multilineTextAlignment(.leading)
                .lineLimit(0)
            
            
            NavigationStack {
                List(wkResultDatastore.getAllCountries(),id: \.self, selection: $selectedCountry) { country in
                                    if(selectedCountry == country){
                                        Text(country).foregroundStyle(Color.red).selectionDisabled()
                                    }else{
                                        Text(country)
                                    }
                                    
                                }
                if(selectedCountry != ""){
                    NavigationLink(destination: ResultsView(selectedCountry: $selectedCountry) {
                        Text("Next")
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
