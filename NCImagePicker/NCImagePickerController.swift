//
//  NCImagePickerController.swift
//  NCImagePicker
//
//  Created by Nick on 2019/3/19.
//  Copyright © 2019年 Nick. All rights reserved.
//

import UIKit

@objc protocol NCImagePickerDelegate {
    
    @objc func imagePickedComplete(images:NSArray) -> Void
}

class NCImagePickerController: UINavigationController {
    
    var pickedImages = NSMutableArray.init()
    weak var imagePickerDelegate:NCImagePickerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let albumVC = AlbumListViewController()
        let pickVC = ImagePickerViewController()
        self.setViewControllers([albumVC,pickVC], animated: false)
    }
    
    
    func imagePickedComplete() {
        self.imagePickerDelegate?.imagePickedComplete(images: NSArray.init(array: self.pickedImages))
    }
    
    
}
