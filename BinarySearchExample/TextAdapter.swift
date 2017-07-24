//
//  TextAdapter.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 16/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import Foundation
import UIKit

class TextAdapter: CollectionAdapter {

    let attributedText: NSAttributedString
    
    
    init(attributedText: NSAttributedString) {
        self.attributedText = attributedText
    }
}
