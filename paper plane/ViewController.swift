//
//  ViewController.swift
//  paper plane
//
//  Created by Nighthwtnk on 10/3/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit
import MapKit

final class postOfficeAnnotation: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle:String?){
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
    super.init()
    }
    var region: MKCoordinateRegion{
        let span  = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        
        return MKCoordinateRegion(center: coordinate, span: span)
    }
}

class ViewController: UIViewController ,CLLocationManagerDelegate{
    @IBOutlet weak var mapView: MKMapView!
    var mapLocationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapLocationManager.delegate = self
        mapLocationManager.desiredAccuracy = kCLLocationAccuracyBest
        mapLocationManager.delegate = self
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse && CLLocationManager.authorizationStatus() != . authorizedAlways {
            mapLocationManager.requestWhenInUseAuthorization()
        }
        mapView.showsUserLocation = true
        mapLocationManager.startUpdatingLocation()
        
        mapView.register(MKAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
            let OfficeCordinate = CLLocationCoordinate2D(latitude: 15.154691, longitude: 98.45036140000002)
            let OfficeAnnotation = postOfficeAnnotation(coordinate:OfficeCordinate, title:"Post Offiec", subtitle:"..." )
        
            mapView.addAnnotation(OfficeAnnotation)
            mapView.setRegion(OfficeAnnotation.region, animated: true)
        
    }//end override fuce
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//
//    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        GoToCenterLocation()
    }//end func locationManager
    func GoToCenterLocation() {
        if let locMan = mapLocationManager.location {
            let region = MKCoordinateRegion(center: locMan.coordinate, latitudinalMeters: 400, longitudinalMeters: 400)
            mapView.setRegion(region, animated: true)
        }
    }//end func GoToCenterLocation
    
}//end class

    extension ViewController: MKMapViewDelegate {
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
        if let officeAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView{
            officeAnnotationView.animatesWhenAdded = true
            officeAnnotationView.titleVisibility = .adaptive
            officeAnnotationView.titleVisibility = .adaptive
            
            return officeAnnotationView
        }
    return nil
    }//end func mapview
}//end extension


