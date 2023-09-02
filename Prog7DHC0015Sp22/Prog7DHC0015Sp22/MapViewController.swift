//
//  MapViewController.swift
//  Prog7DHC0015Sp22
//
//  Created by Dimitri Chaber on 3/16/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let manager = MapDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()

        // Do any additional setup after loading the view.
    }
    
    func initialize(){
        manager.fetch()
        addMap(annotations: manager.locations)
    }
    
    func addMap(annotations: [LocationItem]){
        mapView.setRegion(manager.currentRegion(latDelta: 0.1, longDelta: 0.1), animated: true)
        mapView.addAnnotations(manager.locations)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
