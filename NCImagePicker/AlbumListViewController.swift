//
//  AlbumListViewController.swift
//  NCImagePicker
//
//  Created by Nick on 2019/3/19.
//  Copyright © 2019年 Nick. All rights reserved.
//

import UIKit

class AlbumListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.createNavigationBarItem()
    }
    
    func createNavigationBarItem() {
        
        let button = UIButton.init(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 65, height: 35)))
        button.setTitle("取消", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(cancelAction), for: UIControl.Event.touchUpInside)
        
        
        let cancelBtn = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = cancelBtn
        
    }
    
    @objc func cancelAction(){
        self.dismiss(animated: true, completion: nil)
    }

    

}
