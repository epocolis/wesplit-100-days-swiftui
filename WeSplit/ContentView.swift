//
//  ContentView.swift
//  WeSplit
//
//  Created by Leotis buchanan on 2021-04-21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkoutAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    
    let tipPercentages = [10,15,20,25,0]
    
    
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        Form {
            
            Section {
                TextField("Amount", text:$checkoutAmount)
                    .keyboardType(.decimalPad)
            }
            
            Section {
                Text("$\(checkoutAmount)")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
