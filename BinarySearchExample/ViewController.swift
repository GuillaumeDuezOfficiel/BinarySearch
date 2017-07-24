//
//  ViewController.swift
//  BinarySearchExample
//
//  Created by Duez Guillaume on 13/06/2017.
//  Copyright © 2017 Duez Guillaume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var identiferCell = "IntegerCollectionViewCell"
    
    fileprivate(set) lazy var collectionViewDelegate: CollectionDelegate = CollectionDelegate(delegate: self)
    fileprivate(set) lazy var collectionViewDatasource: CollectionDataSource = CollectionDataSource(delegate: self)
    
    var datas = ViewControllerDatas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      //  collectionView.register(IntegerCollectionViewCell.class, forCellWithReuseIdentifier: identiferCell)
        setupCollectionView()
        
    }
    
    func setupCollectionView() {
        bind(collectionView: collectionView, with: datas, and: collectionViewDelegate, and: collectionViewDatasource)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController : CollectionDidSelectCellDelegate {
    func didSelect(_ cellDescriptor: CollectionCellDescribable, sectionDescriptor: CollectionSectionDescribable, indexPath: IndexPath) {
        var cell = collectionView.cellForItem(at: indexPath)
        
        if let cell = cell as? IntegerCollectionViewCell {
            let number = Int((cell.label.text)!)
            if let number = number {
                datas.valueTofFind = number
                let result = datas.update({ (updater) in
                    updater.reloadData()
                })
                collectionView.performUpdates(with: result)
            }
        }
    }
}

enum UserEvent {
    case elementTapped
}

protocol UserEventDelegate : CollectionUserEventDelegate {
    func onUserEvent(_ event:UserEvent, cell:UICollectionViewCell)
}

extension ViewController : UserEventDelegate {

func onUserEvent(_ event: UserEvent, cell: UICollectionViewCell) {
    
    }
}
