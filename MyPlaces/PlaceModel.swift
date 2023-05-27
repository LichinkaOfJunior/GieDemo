//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Nikita on 24.05.23.
//

import Foundation

struct Place {
    static let initialPlaces = ["Cafe Pushkin", "Bistro de Luxe", "Grand Cafe Brest", "Vasilki Restaurant", "Di Mare Restaurant", "La Crete d'Or", "Dikanka Cafe", "Gastro Cafe Kishmish", "Marbella Restaurant", "Staroe Ruslo Restaurant"]
    var name: String
    var location: String
    var type: String
    var image: String
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in initialPlaces {
            places.append(Place(name: place, location: "Брест", type: "Ресторан", image: place))
        }
        
        return places
    }
}
