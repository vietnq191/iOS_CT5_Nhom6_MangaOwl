//
//  ColectionTableViewCell.swift
//  MangaOwl
//
//  Created by Trần Đức on 13/05/2022.
//  Copyright © 2022 fit.tdc. All rights reserved.
//

import UIKit

class ColectionTableViewCell: UITableViewCell {

    private let CollectionView: UICollectionView
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 170, height: 170)
        layout.sectionInset = UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
        self.CollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        CollectionView.showsHorizontalScrollIndicator = false
        CollectionView.showsVerticalScrollIndicator = false
        
        CollectionView.register(TableCollectionViewCell.self, forCellWithReuseIdentifier: TableCollectionViewCell.indentifier)
        
        CollectionView.dataSource = self
        CollectionView.delegate = self
        
        contentView.addSubview(CollectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    extension ColectionTableViewCell:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
        func numberOfSections (in collectionView: UICollectionView) -> Int{
            return 1
        }
        func collectionView(_collectionView: UICollectionView, numberOfItemsSection section:Int) -> Int{
            return 1
        }
        func collectionView(_collectionView: UICollectionView, cellForItemAt indexPath:IndexPath) -> UICollectionViewCell{
            let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: TableCollectionViewCell.indentifier, for: indexPath) as! TableCollectionViewCell
            return cell
        }
        func collectionView(_collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) -> UICollectionViewCell{
            CollectionView.deselectItem(at: indexPath, animated: true)
        }
    }
}
