//
//  ColorAdapter.swift
//  Collor
//
//  Created by Guihal Gwenn on 22/02/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//
import Collor
import Foundation
import UIKit

struct ColorAdapter: CollectionAdapter {

    let color:UIColor
    
    init(hexaColor:Int) {
        color = UIColor(netHex: hexaColor)
    }

}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}
