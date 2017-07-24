//
//  TextDescriptor.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 16/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//
import Foundation
import UIKit

class TextDescriptable: CollectionCellDescribable {
    
    let identifier: String = "TextCollectionViewCell"
    let className: String = "TextCollectionViewCell"
    var selectable:Bool = false
    var indexPath: IndexPath!
    
    var marginRight: CGFloat = 0
    
    var adapter: CollectionAdapter {
        return _adapter
    }
    let _adapter: TextAdapter
    
    init(attributedText: NSAttributedString) {
        _adapter = TextAdapter(attributedText: attributedText)
    }
    
    func getAdapter() -> CollectionAdapter {
        return adapter
    }
    
    func size(_ collectionView: UICollectionView, sectionDescriptor: CollectionSectionDescribable) -> CGSize {
        let sectionInset = sectionDescriptor.sectionInset(collectionView)
        let width = collectionView.bounds.size.width - sectionInset.left - sectionInset.right - marginRight
        return CGSize(width: width, height: 20)
    }
}
