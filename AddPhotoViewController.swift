//
//  AddPhotoViewController.swift
//  lauraviewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Laura. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    


    
    @IBAction func accessCamera(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated : true, completion : nil)
    }
    
    @IBAction func accessAlbums(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated : true, completion : nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            newImage.image = selectedImage
            
        }
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
