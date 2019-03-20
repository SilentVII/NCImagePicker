//
//  MainViewController.swift
//  NCImagePicker
//
//  Created by fitloft on 2019/3/18.
//  Copyright © 2019年 Nick. All rights reserved.
//

import UIKit
import Photos
private let screenWidth = UIScreen.main.bounds.size.width
private let screenHeight = UIScreen.main.bounds.size.height

class MainViewController: UIViewController, NCImagePickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        
        let button: UIButton = UIButton.init(frame: CGRect(origin: CGPoint(x: (screenWidth-200)/2, y: 100), size: CGSize(width: 200, height: 55)))
        button.backgroundColor = UIColor.lightGray
        button.setTitle("add photo", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.addTarget(self, action:#selector(addPhotoAction), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @objc func addPhotoAction()-> Void{
        let actionSheet:UIAlertController = UIAlertController.init(title: "添加照片", message: "拍摄或从相册选取", preferredStyle: UIAlertController.Style.actionSheet)
        let takePhoto:UIAlertAction = UIAlertAction(title: "拍摄", style: .default) { (takePhoto) in
            NSLog("拍摄")
        }
        let pickImage: UIAlertAction = UIAlertAction(title: "从相册选取", style: .default) { (pickImage) in
            NSLog("从相册选择");
            self.pushImagePickerController()
        }
        let cancel: UIAlertAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        actionSheet.addAction(takePhoto)
        actionSheet.addAction(pickImage)
        actionSheet.addAction(cancel)
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    
    func pushImagePickerController() {
        let pickerContr = NCImagePickerController.init()
        pickerContr.imagePickerDelegate = self
        self.present(pickerContr, animated: true, completion: nil)
    }
    
    
    //NCImagePickerDelegate
    func imagePickedComplete(images: NSArray) {
        NSLog("图片选择成功")
    }
    
    
}
