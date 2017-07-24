//
//  IntegerDescriptor.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 15/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//
import UIKit

class IntegerDescriptable: CollectionCellDescribable {
    
    let identifier: String = "IntegerCollectionViewCell"
    let className: String = "IntegerCollectionViewCell"
    var selectable:Bool = true
    var indexPath: IndexPath!
    
    var adapter: CollectionAdapter {
        return _adapter
    }
    let _adapter: IntegerAdapter
    
    init(integer: Int, color: UIColor) {
        _adapter = IntegerAdapter(integer: integer, color: color)
    }
    
    func getAdapter() -> CollectionAdapter {
        return adapter
    }
    
    func size(_ collectionView: UICollectionView, sectionDescriptor: CollectionSectionDescribable) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
}
