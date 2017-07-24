//
//  TextCollectionViewCell.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 16/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import UIKit

class TextCollectionViewCell: UICollectionViewCell, CollectionCellAdaptable {

    @IBOutlet weak var label: UILabel!
    

   func update(with adapter: CollectionAdapter) {
        guard let adapter = adapter as? TextAdapter else {
            fatalError("TextAdapter required")
        }
        label.attributedText = adapter.attributedText
    }

}
