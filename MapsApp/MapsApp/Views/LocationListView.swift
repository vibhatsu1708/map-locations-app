//
//  LocationListView.swift
//  MapsApp
//
//  Created by Vedant Mistry on 30/04/24.
//

import SwiftUI

struct LocationListView: View {
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.locations) { location in
                Button {
                    viewModel.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .listRowBackground(Color.clear)
            }
        }
        .padding(.vertical)
        .listStyle(.plain)
    }
}

#Preview {
    LocationListView()
        .environmentObject(LocationsViewModel())
}

extension LocationListView {
    private func listRowView(location: Location) -> some View {
        HStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
