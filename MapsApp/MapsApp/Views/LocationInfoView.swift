//
//  LocationInfoView.swift
//  MapsApp
//
//  Created by Vedant Mistry on 01/05/24.
//

import SwiftUI

struct LocationInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                LocationImagesView
                
                LocationBodyView
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    LocationInfoView(location: LocationsDataServices.locations.first!)
}

extension LocationInfoView {
    private var LocationImagesView: some View {
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
    }
    
    private var LocationBodyView: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text(location.name)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Text(location.cityName)
                        .font(.title2)
                }
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "location.circle.fill")
                        .font(.title)
                }
            }
            
            Divider()
            
            VStack {
                Text(location.description)
            }
            
            VStack(alignment: .leading) {
                Text("Popular Cars")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Divider()
                
                ForEach(location.popularCars, id: \.self) { car in
                    Text(car)
                }
            }
            .padding(.top, 30)
            
            VStack(alignment: .leading) {
                Text("Motorsports")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Divider()
                
                ForEach(location.motorsports, id: \.self) { sport in
                    Text(sport)
                }
            }
            .padding(.top, 30)
            
            VStack(alignment: .leading) {
                Text("Read More")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Divider()
                
                Link(destination: URL(string: location.url)!, label: {
                    Text("Wikipedia")
                })
            }
            .padding(.top, 30)
        }
        .padding()
    }
}
