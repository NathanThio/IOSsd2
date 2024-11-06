//
//  WKQatarApp.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import SwiftUI

@main
struct WKQatarAppApp: App {
    var body: some Scene {
        @State var datastore = WKResultsDatastore()
        WindowGroup {
            ContentView()
                .environment(datastore)
        }
    }
}
