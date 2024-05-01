//
//  LocationView.swift
//  MapsApp
//
//  Created by Vedant Mistry on 29/04/24.
//

import MapKit
import SwiftUI

struct LocationView: View {
    @EnvironmentObject var viewModel: LocationsViewModel
    
    var body: some View {
        ZStack {
            Map(position: $viewModel.mapPosition) {
                ForEach(viewModel.locations) { location in
                    Marker(location.name, coordinate: location.coordinates)
                }
            }
            
            VStack {
                ForEach(viewModel.locations) { location in
                    if viewModel.mapLocation == location {
                        LocationPreviewView(location: location)
                            .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
                    }
                }
                
                Spacer()
                
                HStack {
                    header
                        .padding()
                }
            }
        }
        .fullScreenCover(item: $viewModel.presentLocationInfoView) { location in
            LocationInfoView(location: location)
        }
    }
}

#Preview {
    LocationView()
        .environmentObject(LocationsViewModel())
}

extension LocationView {
    private var header: some View {
        VStack {
            if viewModel.showLocationsList {
                LocationListView()
                Divider()
            }
            
            
            HStack {
                Image(systemName: viewModel.showLocationsList ? "globe.desk.fill" : "location.circle.fill")
                    .font(.headline)
                    .foregroundStyle(Color.primary)
                    .rotationEffect(Angle(degrees: viewModel.showLocationsList ? 360 : 0))
                
                Text(viewModel.mapLocation.name + " " + viewModel.mapLocation.cityName)
                    .padding()
                    .font(.headline)
                    .foregroundStyle(Color.primary)
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal)
            .onTapGesture {
                viewModel.toggleLocationsList()
            }
        }
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
        .shadow(radius: 30)
    }
}
