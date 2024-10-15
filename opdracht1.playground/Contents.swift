import UIKit

var text : String = "SWIFT"

let max : Int = 10

var average : Double = 0

var letters = text.split(separator: "")

for letter in letters {
    print(letter)
}

func reverseString(word : String?) -> String {
    if (word != nil) {
        var letters = word!.split(separator:"")
        letters.reverse()
        var woord = ""
        for letter in letters {
            woord = woord + letter
        }
        return woord
    } else {
        return ""
    }
}

reverseString(word: "Vives")

reverseString(word: nil)

func getUpperLowerCount(tekst : String) -> (upper : String, lower : String, aantal : String) {
    var upper = tekst.uppercased()
    var lower = tekst.lowercased()
    var aantal = String (tekst.count)
    return (upper, lower, aantal)
}

var result = getUpperLowerCount(tekst: "iOS 17")

print(result.upper + "\n" + result.lower + "\n" + result.aantal)

print(result)

enum upperLowerError : Error {
    case nilParameter(errorText : String)
    case emptyParameter(errorText : String)
}

func getUpperLowerCountOptional(tekst : String?) throws -> (upper : String, lower : String, aantal : String){
    if tekst == nil {
        throw upperLowerError.nilParameter(errorText: "Nil value parameter not allowed")
    } else if tekst == "" {
        throw upperLowerError.emptyParameter(errorText: "Empty String parameter not allowed")
    } else {
        var upper = tekst!.uppercased()
        var lower = tekst!.lowercased()
        var aantal = String (tekst!.count)
        return (upper, lower, aantal)
    }
}
do {
    try getUpperLowerCountOptional(tekst: nil)
} catch upperLowerError.nilParameter(let errorMessage){
    print(errorMessage)
} catch upperLowerError.emptyParameter(let errorMessage) {
    print(errorMessage)
}
/*
do {
    //try getUpperLowerCountOptional(tekst: nil)
    //try getUpperLowerCountOptional(tekst: "")
    try getUpperLowerCountOptional(tekst: "iOS17")
} catch upperLowerError.nilParameter {
    print("Nil value parameter not allowed")
} catch upperLowerError.emptyParameter {
    print("Empty String parameter not allowed")
}*/

