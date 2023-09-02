//
//  MapDataManager.swift
//  Prog7DHC0015Sp22
//
//  Created by Dimitri Chaber on 3/16/22.
//

import UIKit
import CoreLocation
import MapKit

class MapDataManager {
    var locations: [LocationItem] = []
    
    func fetch(){
        if let file = Bundle.main.url(forResource: "Locations", withExtension: "json"){
            do{
                let data = try Data(contentsOf: file)
                locations = try JSONDecoder().decode([LocationItem].self, from: data)
            }catch{
                print(error)
            }
        }
        
    }
    
    func currentRegion(latDelta:CLLocationDegrees, longDelta:CLLocationDegrees)-> MKCoordinateRegion{
        guard let item = locations.first else{
            return MKCoordinateRegion()
        }
        print("ALL GOOD")
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        return MKCoordinateRegion(center: item.coordinate, span: span)
    }

}
