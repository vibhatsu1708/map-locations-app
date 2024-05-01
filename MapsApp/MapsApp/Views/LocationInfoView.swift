//
//  LocationInfoView.swift
//  MapsApp
//
//  Created by Vedant Mistry on 01/05/24.
//

import SwiftUI

struct LocationInfoView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(location.imageNames, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                        }
                    }
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.viewAligned)
                .safeAreaPadding()
                .scrollIndicators(.hidden)
                
                Text(location.name)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text(location.cityName)
                    .font(.title2)
                
                Divider()
                
                Text(location.description)
            }
        }
        .safeAreaPadding()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    LocationInfoView(location: LocationsDataServices.locations.first!)
}
