//
//  WKResultsDataStore.swift
//  WKQatar
//
//  Created by Nathan Thio on 05/11/2024.
//

import Foundation
@Observable

class WKResultsDatastore: ObservableObject {
    var results : [WKResult]
        
    init() {
        results = load("WKResultsQatar.json")
    }
    
    func getAllLocations() -> [String] {
        let resultsFiltered = results.filter{
            wkresult in wkresult.group != nil
        }
        let locations = resultsFiltered.map {
            wkresult in wkresult.location
        }
        return Array(Set(locations)).sorted()
    }
    
    func getAllCountries() -> [String] {
        let resultsFiltered = results.filter{
            wkresult in wkresult.group != nil
        }
        let locations = resultsFiltered.map {
            wkresult in wkresult.homeTeam
        }
        return Array(Set(locations)).sorted()
    }
    
    //func getAllResultByLocation()
    func getAllResultByLocation(location : String) -> [WKResult] {
        print("getAllResultsByLocation")
        var resultsFiltered = results.filter {
            wkResult in wkResult.location.elementsEqual(location)
        }
        resultsFiltered.sort {el1, el2 in
            el1.dateUTC < el2.dateUTC
        }
        return resultsFiltered
    }
    //getAllTeams()
    func getAllTeams() -> [String] {
        let resultsFiltered = results.filter{
            wkresult in wkresult.group != nil
        }
        let locations = resultsFiltered.map {
            wkresult in wkresult.homeTeam
        }
        return Array(Set(locations)).sorted()
    }}
