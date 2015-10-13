//
//  MapViewController.swift
//  BitmakeriOSWorkshop
//
//  Created by KBryan on 2015-10-13.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self
        self.locationManager.delegate = self
        
        // ask users permission
        locationManager.requestWhenInUseAuthorization()
        let status = CLLocationManager.authorizationStatus()
        
        if status == CLAuthorizationStatus.AuthorizedAlways || status == CLAuthorizationStatus.AuthorizedWhenInUse {
            self.mapView.showsUserLocation = true
        }
        
        // Set the GPS Location of the App
        let location = CLLocationCoordinate2D(latitude: 43.64251, longitude: -79.387038)
        let span = MKCoordinateSpanMake(0.001, 0.001)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        locationManager.startUpdatingLocation()
        
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "CN Tower"
        annotation.subtitle = "Toronto"
        mapView.addAnnotation(annotation)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
