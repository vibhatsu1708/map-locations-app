//
//  LocationsDataServices.swift
//  MapsApp
//
//  Created by Vedant Mistry on 28/04/24.
//

import Foundation
import MapKit

class LocationsDataServices {
    static let locations: [Location] = [
        Location(
            name: "Porsche",
            cityName: "Stuttgart, Germany",
            description: "Porsche is a renowned German automobile manufacturer headquartered in Stuttgart, Germany, specializing in high-performance luxury vehicles. Founded by Ferdinand Porsche, the company is known for its iconic sports cars like the 911, but their current lineup also includes SUVs like the Cayenne and Macan, and even the Taycan, their first all-electric sports car. Owned by Volkswagen AG, Porsche itself is a major shareholder in the Volkswagen Group, creating a unique ownership structure. Still rooted in Stuttgart with its development center in Weissach, Porsche continues to deliver dream cars to customers worldwide, combining innovation and high-performance to create a truly captivating driving experience.",
            imageNames: [
                "porsche-1",
                "porsche-2"
            ],
            popularCars: [
                "Porsche 911 GT3 RS",
                "Porsche 911 GT2",
                "Porsche 919 Hybrid"            ],
            motorsports: [
                "Formula E",
                "GT Racing",
                "ESports"
            ],
            url: "https://en.wikipedia.org/wiki/Porsche",
            coordinates: CLLocationCoordinate2D(latitude: 48.783333, longitude: 9.183333)
        ),
        Location(
            name: "Ferrari",
            cityName: "Maranello, Italy",
            description: "Ferrari S.p.A. is an Italian luxury sports car manufacturer based in Maranello, Emilia-Romagna. Founded in 1929 by Enzo Ferrari as Scuderia Ferrari, the company participated in racing before producing street-legal vehicles in 1947. As of 2021, it is the world's most powerful brand according to Brand Finance. Ferrari is known for its high-performance sports cars, racing cars, and luxury goods such as clothing, accessories, and perfumes. Ferrari participates in Formula One as Scuderia Ferrari, which is the oldest surviving and most successful Formula One team, having participated in every year of the championship since its inception in 1950.",
            imageNames: [
                "ferrari-1",
                "ferrari-2"
            ],
            popularCars: [
                "Ferrari F8 Tributo",
                "Ferrari SF90 Stradale",
                "Ferrari 812 Superfast"
            ],
            motorsports: [
                "Formula One",
                "WEC",
                "GT World Challenge Europe"
            ],
            url: "https://en.wikipedia.org/wiki/Ferrari",
            coordinates: CLLocationCoordinate2D(latitude: 44.526302, longitude: 10.866683)
        ),
        Location(
            name: "Red Bull",
            cityName: "Milton Keynes, United Kingdom",
            description: "Red Bull GmbH is an Austrian multinational corporation headquartered in Fuschl am See, Austria, specializing in energy drinks, selling its namesake energy drink, along with a variety of other caffeinated beverages. The company was founded in 1984 by Dietrich Mateschitz and Chaleo Yoovidhya. Red Bull Racing is a Formula One racing team founded in 2005, competing with a license from Austria. It has its headquarters and manufacturing facilities located in Milton Keynes, England.",
            imageNames: [
                "redbull-1",
                "redbull-2"
            ],
            popularCars: [
                "Red Bull RB18",
                "Red Bull RB16B",
                "Red Bull RB14"
            ],
            motorsports: [
                "Formula One",
                "NASCAR",
                "MotoGP"
            ],
            url: "https://en.wikipedia.org/wiki/Red_Bull",
            coordinates: CLLocationCoordinate2D(latitude: 35.5825, longitude: -80.8129)
        ),
        Location(
            name: "Audi",
            cityName: "Ingolstadt, Germany",
            description: "Audi AG is a German multinational corporation headquartered in Ingolstadt, Bavaria, that designs, engineers, manufactures and distributes luxury vehicles. Audi is a subsidiary of the Volkswagen Group and is the second-largest selling luxury car brand after its corporate sibling, Mercedes-Benz. Audi is known for its Quattro all-wheel-drive system and its slogan, 'Vorsprung durch Technik' (German for 'Advancement through Technology').",
            imageNames: [
                "audi-1",
                "audi-2"
            ],
            popularCars: [
                "Audi R8",
                "Audi RS e-tron GT",
                "Audi TT"
            ],
            motorsports: [
                "Formula E",
                "DTM",
                "WEC"
            ],
            url: "https://en.wikipedia.org/wiki/Audi",
            coordinates: CLLocationCoordinate2D(latitude: 41.479504, longitude: 1.923048)
        )
    ]
}
