//
//  ViewController.swift
//  FoursquareCloneWithParse
//
//  Created by Erhan Acisu on 3.10.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    /*
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Banana"
        parseObject["calories"] = 200
        parseObject.saveInBackground { (success, error) in
            if error != nil {
                print(error?.localizedDescription)
            }
            else{
                print("uploaded")
            }
        }
        */
       let query  = PFQuery(className:  "Fruits")

        query.findObjectsInBackground { (objects, error) in
            if error != nil{
                print(error?.localizedDescription)
            }
            else{
                print(objects)
            }
            
        }
    }
}




