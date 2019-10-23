//
//  ContentView.swift
//  ListAppSwiftUI
//
//  Created by Mamun on 23/10/19.
//  Copyright © 2019 BTech Creators. All rights reserved.
//

import SwiftUI


struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            List (landmarkData) {
                landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

