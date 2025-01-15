//
//  ContentView.swift
//  UITestExample
//
//  Created by Vineeth Krishnan V on 14/01/25.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        VStack {
            Text("count is \(counter)")
            
            
            Button("Increase counter") {
                counter += 1
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
