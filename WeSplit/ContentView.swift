//
//  ContentView.swift
//  WeSplit
//
//  Created by Leotis buchanan on 2021-04-21.
//
/*
Now we’re going to add a second picker view to our app, but this time we want something slightly
different: we want a segmented control. This is a specialized kind of picker that shows a handful of
options in a horizontal list, and it works great when you have only a small selection to choose from.

Our form already has two sections: one for the amount and number of people, and one where we’ll show
the final result – it’s just showing checkAmount for now, but we’re going to fix it soon.

In the middle of those two sections I’d like you to add a third to show tip percentages:

*/

import SwiftUI

struct ContentView: View {
    
    @State private var checkoutAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    
    let tipPercentages = [10,15,20,25,0]
    
    
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        NavigationView {
            
            Form {
                
                Section {
                    TextField("Amount", text:$checkoutAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection:$numberOfPeople){
                        ForEach(2 ..< 100){
                            Text("\($0) people")
                        }
                        
                    }
                    
                }
                
                Section(header:Text("How much tip do you want to leave")) {
                    Picker("Tip percentage", selection: $tipPercentage){
                        ForEach(0 ..< tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                            
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
            }.navigationTitle("WeSplit")
            
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
