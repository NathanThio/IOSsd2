//
//  CalculatorView.swift
//  Calculator
//
//  Created by Nathan Thio on 15/10/2024.
//

import SwiftUI

struct CalculatorView: View {
    @State var result = ""
    var body: some View {
        VStack {
            HStack {
                TextEditor(text: .constant(result))
                Grid {
                    GridRow {
                        ForEach(7..<10) {
                            number in Button("\(number)") {
                                
                            }
                        }
                        Button("/") {
                            
                        }                    }
                    GridRow {
                        ForEach(4..<7) {
                            number in Button("\(number)") {
                                
                            }
                        }
                        Button("*") {
                            
                        }                    }
                    GridRow {
                        ForEach(1..<4) {
                            number in Button("\(number)") {
                                
                            }
                        }
                        Button("-") {
                            
                        }                    }
                    GridRow {
                        Button("0") {
                            
                        }
                        Button("+") {
                            
                        }
                    }
                    GridRow {
                        Button("Clear") {
                            
                        }
                        Button("Enter") {
                            
                        }
                    }
                }
            }
            Button("Show Stack") {
                
            }
        }
    }
}

#Preview {
    CalculatorView(result: "test")
}
