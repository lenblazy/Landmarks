//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Lennox Mwabonje on 22/03/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetails(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
