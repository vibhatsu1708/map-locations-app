//
//  LocationsViewModel.swift
//  MapsApp
//
//  Created by Vedant Mistry on 29/04/24.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var presentLocationInfoView: Location?
    
    // all locations
    @Published var locations: [Location]
    
    @Published var mapLocation: Location {
        didSet {
            updateMapPosition(location: mapLocation)
        }
    }
    
    let mapSpan = MKCoordinateSpan(
        latitudeDelta: 0.1,
        longitudeDelta: 0.1
    )
    
    @Published var mapPosition = MapCameraPosition.region(
        MKCoordinateRegion()
    )
    
    // show the list of locations
    @Published var showLocationsList: Bool = false
    
    init() {
        let locations = LocationsDataServices.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapPosition(location: locations.first!)
    }
    
    private func updateMapPosition(location: Location) {
        withAnimation {
            mapPosition = MapCameraPosition.region(
                MKCoordinateRegion(
                    center: mapLocation.coordinates,
                    span: mapSpan
                )
            )
        }
    }
    
    func toggleLocationsList() {
        withAnimation(Animation.spring) {
            self.showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(Animation.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
}
