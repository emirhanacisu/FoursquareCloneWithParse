//
//  AddPlaceVC.swift
//  FoursquareCloneWithParse
//
//  Created by Erhan Acisu on 3.10.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class AddPlaceVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var placeNameText: UITextField!
    @IBOutlet weak var placeTypeText: UITextField!
    @IBOutlet weak var atmosphereText: UITextField!
    @IBOutlet weak var PlaceImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        PlaceImageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        PlaceImageView.addGestureRecognizer(gestureRecognizer)
        
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
        if placeNameText.text != "" && placeTypeText.text != "" && atmosphereText.text != ""  {
            if let choosenImage = PlaceImageView.image{
            
            let placeModel = PlaceModel.sharedInstance
            placeModel.placeName = placeNameText.text!
            placeModel.placeType = placeTypeText.text!
            placeModel.placeAtmosphere = atmosphereText.text!
            placeModel.placeImage = choosenImage
            performSegue(withIdentifier: "toMapVC", sender: nil)
            
               }
            
            }
    else{
    
            let alert = UIAlertController(title: "Error", message: "boslukları doldurunuz", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
    }
        
       
    }

    @objc func chooseImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        PlaceImageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
}
