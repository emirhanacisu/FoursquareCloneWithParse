//
//  PlaceModel.swift
//  FoursquareCloneWithParse
//
//  Created by Erhan Acisu on 4.10.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import Foundation
import  UIKit


class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    var placeName  = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    private init() {}
}
