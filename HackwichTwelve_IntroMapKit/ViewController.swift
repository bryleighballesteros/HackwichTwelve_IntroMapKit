//
//  ViewController.swift
//  HackwichTwelve_IntroMapKit
//
//  Created by Bryleigh Ballesteros on 4/7/26.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    //initial location
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadius: CLLocationDistance = 10000

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        //add our first annotation to the map
        let restaurantOne = restaurantObject(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        //add our second annotation to the map (problem sets)
        let restaurantTwo = restaurantObject(title: "Assaggio", type: "Italian", coordinate: CLLocationCoordinate2D(latitude: 21.332778, longitude: -158.082889))
        mapView.addAnnotation(restaurantTwo)
    }

    func centerMapOnLocation(location: CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

