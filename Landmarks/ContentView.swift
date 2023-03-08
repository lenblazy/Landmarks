//
//  ContentView.swift
//  Landmarks
//
//  Created by Lennox Mwabonje on 08/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("TurtleRock")
                .font(.title)
                .foregroundColor(.green)
            Text("Joshua Tree National Park")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
