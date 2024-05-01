//
//  MapsAppApp.swift
//  MapsApp
//
//  Created by Vedant Mistry on 27/04/24.
//

import SwiftUI

@main
struct MapsAppApp: App {
    @StateObject private var viewModel = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(viewModel)
        }
    }
}
