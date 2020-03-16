//
//  DetailViewController.swift
//  HurstJ Assignment 9
//
//  Created by Jackson Hurst on 3/10/20.
//  Copyright © 2020 Jackson Hurst. All rights reserved.
//

import UIKit
import GoogleMaps

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var header: UINavigationItem!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            header.title = detail.name
                let latitude = Double(detail.lat)!
                let longitude = Double(detail.lon)!
                
                let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: 16.0)
                let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
                view = mapView

                // Creates a marker in the center of the map.
                let marker = GMSMarker()
                marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                marker.title = detail.name
                marker.map = mapView
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: spot? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

