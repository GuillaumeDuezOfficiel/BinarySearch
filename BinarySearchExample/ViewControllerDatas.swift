//
//  ViewControllerDatas.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 15/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerDatas: CollectionDatas {
    
    let sortedArray: [Int] = [12, 18, 22, 36, 54, 96, 128, 402, 496, 602, 728, 2080]
    let steps: [[Int]] = []

    var valueTofFind : Int?
    
    override init() {
        super.init()
    }
    
    override func reloadData() {
        super.reloadData()
        sections.removeAll()
        numberTimesCalled = 0
        
        computeRules()
        
        computeArrayInteger(sortedArray: sortedArray, minIndex: 0, maxIndex: sortedArray.count - 1)
        
        computeFindInteger()
    }
    

    
    
    func computeFindInteger() {
        let sectionFindInteger = SectionDescriptable().uid("computeFindInteger")
        if let valueTofFind = valueTofFind {
            sectionFindInteger.cells.append(CellFactory.valuesToFindCell(valueTofFind: valueTofFind))
        }

        if !sectionFindInteger.cells.isEmpty {
            sections.append(sectionFindInteger)
            let indexElementFound = binarySearch(arrayInteger: sortedArray, minIndex: 0, maxIndex: sortedArray.count - 1, valueToFind: valueTofFind!)
            
            let Textsection = SectionDescriptable().uid("\(valueTofFind)")
            Textsection.cells.append(TextDescriptable(attributedText: AttributtedStringFactory.blueAttributeTextForString(text: "The index for the value \(valueTofFind!) is \(indexElementFound)")).uid("\(valueTofFind)"))
            sections.append(Textsection)
            
        }
        
    }
    
    func binarySearch(arrayInteger: [Int], minIndex: Int, maxIndex: Int, valueToFind: Int) -> Int {
        
        let newIndex = minIndex + Int((CGFloat(maxIndex - minIndex) / 2))
        if arrayInteger[newIndex] > valueToFind {
            computeArrayInteger(sortedArray: Array(sortedArray[minIndex...newIndex]), minIndex: minIndex, maxIndex: newIndex)
            return binarySearch(arrayInteger: arrayInteger, minIndex: minIndex, maxIndex: newIndex - 1, valueToFind: valueToFind)
        } else if arrayInteger[newIndex] < valueToFind {
            computeArrayInteger(sortedArray: Array(sortedArray[(newIndex)...maxIndex]), minIndex: newIndex, maxIndex: maxIndex)
            return binarySearch(arrayInteger: arrayInteger, minIndex: newIndex  + 1, maxIndex: maxIndex, valueToFind: valueToFind)
        } else if arrayInteger[newIndex] == valueToFind {
            computeArrayInteger(sortedArray: Array(sortedArray[minIndex...maxIndex]), minIndex: minIndex, maxIndex: maxIndex)
            return newIndex
        }
        return 0
    }
    
    
    
    // Draw the cells
    var numberTimesCalled = 0
    func computeArrayInteger(sortedArray: [Int], minIndex: Int, maxIndex: Int) {
        if numberTimesCalled > 0 {
            let Textsection = SectionDescriptable().uid("text\(numberTimesCalled)")
            Textsection.cells.append(TextDescriptable(attributedText:  AttributtedStringFactory.blueAttributeTextForString(text: "Selection Number \(numberTimesCalled)")).uid("Textsection"))
            sections.append(Textsection)
        }
        
        let newIndex = minIndex + Int((CGFloat(maxIndex - minIndex) / 2))
        let section = SectionDescriptable().uid("plop\(sections.count)")
        for (index, integer) in sortedArray.enumerated() {
            let color = minIndex + index > newIndex  ? UIColor.red : minIndex + index < newIndex ? UIColor.blue : UIColor.green
            section.cells.append(IntegerDescriptable(integer: integer, color: color).uid("\(color.description)\(integer)"))
        }
        sections.append(section)
        numberTimesCalled += 1
    }
    
    func computeRules() {
        let section = SectionDescriptable().uid("computeRules")
        let blueTextDescriptable = CellFactory.computeBlueCellRules()
        section.cells.append(blueTextDescriptable)
        section.cells.append(IntegerDescriptable(integer: 20, color: UIColor.blue).uid("blueInteger"))
        
        let greenTextDescriptable = CellFactory.computeGreenCellRules()
        section.cells.append(greenTextDescriptable)
        section.cells.append(IntegerDescriptable(integer: 30, color: UIColor.green).uid("greenInteger"))
        
        let redTextDescriptable = CellFactory.computeRedCellRules()
        section.cells.append(redTextDescriptable)
        section.cells.append(IntegerDescriptable(integer: 60, color: UIColor.red).uid("redInteger"))
        sections.append(section)
    }
    
}
