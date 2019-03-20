//
//  ImagePickerController.swift
//  NCImagePicker
//
//  Created by fitloft on 2019/3/18.
//  Copyright © 2019年 Nick. All rights reserved.
//

import UIKit
private let headSpace:CGFloat = 44.0
private let space = 2           //元素横竖间隔
private let itemsPerRow = 4     //每一行元素个数
private let screenWidth = UIScreen.main.bounds.size.width
private let screenHeight = UIScreen.main.bounds.size.height


class ImagePickerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    private var imageArr: NSMutableArray = NSMutableArray.init()
    private var selectedArr: NSMutableArray = NSMutableArray.init()
    
    
    //image collection
    private lazy var collectionView: UICollectionView = {
    
        let itemWidth = (screenWidth - 6) / 4
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        
        let collectionView = UICollectionView.init(frame: CGRect(origin: CGPoint(x: 0, y: headSpace), size: CGSize(width: screenWidth, height: screenHeight - headSpace)), collectionViewLayout: layout)
        collectionView.register(ImageItemCell.self, forCellWithReuseIdentifier: "ImageItemCell")
        collectionView.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell.init()
    }

}
