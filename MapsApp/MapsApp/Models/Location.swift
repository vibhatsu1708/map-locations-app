//
//  Location.swift
//  MapsApp
//
//  Created by Vedant Mistry on 28/04/24.
//

import Foundation
import MapKit

struct Location {
    let name: String
    let cityName: String
    let description: String
    let imageNames: [String]
    let popularCars: [String]
    let motorsports: [String]
    let url: String
    let coordinates: CLLocationCoordinate2D
}
