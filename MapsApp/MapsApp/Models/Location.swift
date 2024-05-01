//
//  Location.swift
//  MapsApp
//
//  Created by Vedant Mistry on 28/04/24.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
  let name: String
  let cityName: String
  let description: String
  let imageNames: [String]
  let popularCars: [String]
  let motorsports: [String]
  let url: String
  let coordinates: CLLocationCoordinate2D

  var id: String {
    return name + cityName
  }

  // Implement the == operator to compare all properties
  static func == (lhs: Location, rhs: Location) -> Bool {
    return lhs.name == rhs.name &&
           lhs.cityName == rhs.cityName &&
           lhs.description == rhs.description &&
           lhs.imageNames == rhs.imageNames &&
           lhs.popularCars == rhs.popularCars &&
           lhs.motorsports == rhs.motorsports &&
           lhs.url == rhs.url
  }
}
