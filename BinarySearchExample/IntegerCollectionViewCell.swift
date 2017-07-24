//
//  IntegerCollectionViewCell.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 15/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import UIKit

class IntegerCollectionViewCell: UICollectionViewCell, CollectionCellAdaptable {
    
    @IBOutlet weak var label: UILabel!
    
    func update(with adapter: CollectionAdapter) {
        guard let adapter = adapter as? IntegerAdapter else {
            fatalError("IntegerAdapter required")
        }
        layer.borderColor = adapter.color.cgColor
        label.attributedText = adapter.attributeLabel
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.borderWidth = 1
    }

}
