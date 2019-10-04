//
//  MapVC.swift
//  FoursquareCloneWithParse
//
//  Created by Erhan Acisu on 3.10.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButtonClicked))
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtonClicked) )
    }
    @objc func backButtonClicked(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func saveButtonClicked(){
        //PARse
    }

}
