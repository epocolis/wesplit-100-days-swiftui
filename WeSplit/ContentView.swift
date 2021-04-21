//
//  ContentView.swift
//  WeSplit
//
//  Created by Leotis buchanan on 2021-04-21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text:$name)
            Text("Your name \(name)")
        }
            
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
