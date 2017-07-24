//
//  AttributedStringFactory.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 11/07/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import Foundation
import UIKit

class AttributtedStringFactory {
    
    static func blueAttributeTextForString(text: String) -> NSAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        return NSAttributedString(string: text, attributes: [
            NSParagraphStyleAttributeName : style,
            NSForegroundColorAttributeName: UIColor.blue,
            NSFontAttributeName: UIFont.systemFont(ofSize: 12)])
    }
    
    static func greenAttributeTextForString(text: String) -> NSAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        return NSAttributedString(string: text, attributes: [
            NSParagraphStyleAttributeName : style,
            NSForegroundColorAttributeName: UIColor.green,
            NSFontAttributeName: UIFont.systemFont(ofSize: 12)])
    }
    
    
    static func redAttributeTextForString(text: String) -> NSAttributedString {
        let style = NSMutableParagraphStyle()
        style.alignment = .center
        return NSAttributedString(string: text, attributes: [
            NSParagraphStyleAttributeName : style,
            NSForegroundColorAttributeName: UIColor.red,
            NSFontAttributeName: UIFont.systemFont(ofSize: 12)])
    }
    
}
