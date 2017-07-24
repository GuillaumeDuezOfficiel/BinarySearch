//
//  IntegerAdapter.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 15/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import Foundation
import UIKit

class IntegerAdapter: CollectionAdapter {

    let attributeLabel: NSAttributedString
    let color: UIColor
    
    init(integer: Int, color: UIColor) {
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        attributeLabel = NSAttributedString(string: NSNumber(integerLiteral: integer).stringValue, attributes: [
            NSParagraphStyleAttributeName : style,
            NSForegroundColorAttributeName: color])
        self.color = color
    }
    
    

}
