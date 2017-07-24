//
//  ActionAdapter.swift
//  Collor
//
//  Created by Guihal Gwenn on 23/02/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//
import Collor
import Foundation

struct ActionAdapter: CollectionAdapter {

    let actionName:String
    let action:DemoDatas.Action
    
    init(action:DemoDatas.Action) {
        self.action = action
        
        switch action {
        case .addSection:
            actionName = "Add a section >"
        case .removeSection:
            actionName = "Remove a section >"
        }
    }

}
