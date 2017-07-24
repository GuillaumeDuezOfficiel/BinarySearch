//
//  VSCollectionDataSource.swift
//  VSC
//
//  Created by Bousquet Romain on 30/06/2016.
//  Copyright © 2016 VSCT. All rights reserved.
//

import Foundation
import UIKit

public class CollectionDataSource: NSObject, UICollectionViewDataSource {
    
    public var collectionDatas: CollectionDatas?
    public weak var delegate:CollectionUserEventDelegate?
    
    public init(delegate:CollectionUserEventDelegate?) {
        self.delegate = delegate
        super.init()
    }
    
    // MARK: UICollectionViewDataSource
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        collectionDatas?.computeIndices()
        return collectionDatas?.sectionsCount() ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionDatas?.sections[section].cells.count ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let collectionDatas = collectionDatas else {
            return UICollectionViewCell()
        }
        
        let cellDescriptor = collectionDatas.sections[indexPath.section].cells[indexPath.item]
        
        if collectionDatas.registeredCells.contains(cellDescriptor.identifier) == false {
            let nib = UINib(nibName: cellDescriptor.className, bundle: nil)
            collectionView.register(nib, forCellWithReuseIdentifier: cellDescriptor.identifier)
            collectionDatas.registeredCells.insert(cellDescriptor.identifier)
        }
 
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellDescriptor.identifier, for: indexPath) as? CollectionCellAdaptable else {
            return UICollectionViewCell()
        }
        
        
        cell.update(with: cellDescriptor.getAdapter() )
        cell.set(delegate: delegate)
        return cell as! UICollectionViewCell
    }
    
}
