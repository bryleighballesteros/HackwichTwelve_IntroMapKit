//
//  restaurantObject.swift
//  HackwichTwelve_IntroMapKit
//
//  Created by Bryleigh Ballesteros on 4/7/26.
//

import UIKit
import MapKit


class restaurantObject: NSObject, MKAnnotation {
    
let restaurantTitle: String?
let restaurantType: String?
let coordinate: CLLocationCoordinate2D
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String?
    {
        return restaurantType
    }

    
    
}
