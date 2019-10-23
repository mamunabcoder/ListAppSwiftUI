//
//  LandmarkDetail.swift
//  ListAppSwiftUI
//
//  Created by Mamun on 23/10/19.
//  Copyright © 2019 BTech Creators. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                
                Spacer()
                
                GeometryReader {
                          geometry in
                        ScrollView {
                            Text("The list renders properly, but you can’t tap an individual landmark to see that landmark’s detail page yet. You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view. The list renders properly, but you can’t tap an individual landmark to see that landmark’s detail page yet.You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.The list renders properly, but you can’t tap an individual landmark to see that landmark’s detail page yet.You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.The list renders properly, but you can’t tap an individual landmark to see that landmark’s detail page yet. You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.The list renders properly, but you can’t tap an individual landmark to see that landmark’s detail page yet.You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.")
                                .lineLimit(nil)
                                .frame(width: geometry.size.width)
                    }
                }
                .padding(.top, 10)
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
