//
//  NCImageRequestCenter.swift
//  NCImagePicker
//
//  Created by fitloft on 2019/3/18.
//  Copyright © 2019年 Nick. All rights reserved.
//

import UIKit
import Photos

class NCImageRequestCenter: NSObject {
    
    static let defaultCenter = NCImageRequestCenter()
    
    func getAlPhotos() -> PHFetchResult<PHAsset> {
        let allPhotosOptions = PHFetchOptions()
        allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
        let allPhotos: PHFetchResult<PHAsset> = PHAsset.fetchAssets(with: allPhotosOptions)
        return allPhotos
    }
    
    func getSmartAlbums() -> PHFetchResult<PHAssetCollection> {
        let allPhotosOptions = PHFetchOptions()
        allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
        let smartAlbums: PHFetchResult<PHAssetCollection> = PHAssetCollection.fetchAssetCollections(with: .smartAlbum, subtype: .albumRegular, options: nil)
        return smartAlbums
    }
    
    func getUserCollections() -> PHFetchResult<PHCollection> {
        let allPhotosOptions = PHFetchOptions()
        allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
        let userCollections: PHFetchResult<PHCollection> = PHCollectionList.fetchTopLevelUserCollections(with: nil)
        return userCollections
    }

}
