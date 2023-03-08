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
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130 )
            
            
            VStack(alignment: .leading) {
                
                Text("TurtleRock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("Carlifornia")
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                
                Text("About TurtleRock")
                    .font(.title2)
                Text("Descriptive Text Goes Here")
                
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
