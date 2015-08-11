//
//  ViewController.swift
//  Pick Images
//
//  Created by Jörg Klausewitz on 11.08.15.
//  Copyright (c) 2015 Stunlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imagePickerView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        
    }
    

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        
        // Fetch the image
        var pickedImg = info[UIImagePickerControllerOriginalImage] as? UIImage

        
        // Set the picked image to the imageview
        imagePickerView.image = pickedImg
        
        
        dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
        
        
    
    @IBAction func pickAnImage(sender: UIBarButtonItem) {

        presentViewController(imagePicker, animated: true, completion: nil)

    }
    
    
        
    
}

