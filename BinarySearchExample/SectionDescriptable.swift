//
//  SectionDescriptor.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 15/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import Foundation
import UIKit

class SectionDescriptable: CollectionSectionDescribable {
    
    var cells: [CollectionCellDescribable] = [CollectionCellDescribable]()
    
    func sectionInset(_ collectionView: UICollectionView) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 20, 10, 20)
    }
    
}
