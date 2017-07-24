//
//  File.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 24/07/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import Foundation

class CellFactory {
    
    
    static func valuesToFindCell(valueTofFind: Int) -> CollectionCellDescribable {
        return TextDescriptable(attributedText: AttributtedStringFactory.blueAttributeTextForString(text: "We are looking for the value \(valueTofFind)")).uid("\(valueTofFind)")
    }
    

    
    static func computeBlueCellRules() -> CollectionCellDescribable {
        let blueTextDescriptable = TextDescriptable(attributedText:AttributtedStringFactory.blueAttributeTextForString(text: "A number below the middle range of index will be blue")).uid("blue")
        blueTextDescriptable.marginRight = 80
        return blueTextDescriptable
    }
    
    
    static func computeRedCellRules() -> CollectionCellDescribable {
        let redTextDescriptable = TextDescriptable(attributedText:AttributtedStringFactory.redAttributeTextForString(text: "A number over the middle range of index will be red")).uid("red")
        redTextDescriptable.marginRight = 80
        return redTextDescriptable
    }
    
    static func computeGreenCellRules()  -> CollectionCellDescribable {
        let greenTextDescriptable = TextDescriptable(attributedText: AttributtedStringFactory.greenAttributeTextForString(text: "A number at the middle range will be green")).uid("green")
        greenTextDescriptable.marginRight = 80
        return greenTextDescriptable
    }
    
    
    
}
