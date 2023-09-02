//
//  LocationItem.swift
//  Prog7DHC0015Sp22
//
//  Created by Dimitri Chaber on 3/16/22.
//

import UIKit
import MapKit

class LocationItem: NSObject, MKAnnotation, Decodable {
    var coordinate: CLLocationCoordinate2D{
        guard let lat = lat, let long = long else{
            return CLLocationCoordinate2D()
        }
        
        return CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
    
    var title: String? {return name}
    var subtitle: String? {return descript}
    

    var name: String?
    var lat: Double?
    var long: Double?
    var descript: String?
    
    
    enum CodingKeys:String, CodingKey{
        case name
        case lat 
        case long
        case descript
        
    }
}
