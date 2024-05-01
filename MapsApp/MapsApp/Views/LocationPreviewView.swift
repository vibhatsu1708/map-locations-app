//
//  LocationPreviewView.swift
//  MapsApp
//
//  Created by Vedant Mistry on 01/05/24.
//

import SwiftUI

struct LocationPreviewView: View {
    @EnvironmentObject private var viewModel: LocationsViewModel
    
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading) {
                imageSection
                
                titleSection
            }
            
            Spacer()
            
            infoSection
        }
        .padding()
        .frame(maxWidth: UIScreen.main.bounds.width - UIScreen.main.bounds.width / 10)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .offset(y: 50)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        .shadow(radius: 20)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        
        LocationPreviewView(location: LocationsDataServices.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
        }
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(location.cityName)
                .font(.headline)
        }
    }
    
    private var infoSection: some View {
        HStack {
            Button {
                viewModel.presentLocationInfoView = location
            } label: {
                Image(systemName: "info.circle.fill")
                    .font(.title)
            }
            
            Button {
                viewModel.showNextLocation(location: location)
            } label: {
                Image(systemName: "location.circle.fill")
                    .font(.title)
            }
        }
    }
}
