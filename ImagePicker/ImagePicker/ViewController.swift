//
//  ViewController.swift
//  ImagePicker
//
//  Created by Pierre on 07/12/2016.
//  Copyright © 2016 Pierre Boudon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var selectedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let picker = UIImagePickerController()
            picker.sourceType = .photoLibrary
            picker.allowsEditing = true
            picker.delegate = self
            
            picker.modalTransitionStyle = .flipHorizontal
            
            self.present(picker, animated: true)
        } else {
            print("Erreur")
        }
    }
}

extension ViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.selectedImage.image = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
}

extension ViewController: UINavigationControllerDelegate {
    
}
