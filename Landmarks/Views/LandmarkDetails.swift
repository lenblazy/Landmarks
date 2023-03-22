//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Lennox Mwabonje on 22/03/2023.
//

import SwiftUI

struct LandmarkDetails: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130 )
            
            
            VStack(alignment: .leading) {
                
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
