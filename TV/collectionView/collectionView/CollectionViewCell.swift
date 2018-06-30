//
//  CollectionViewCell.swift
//  collectionView
//
//  Created by Dilip Kumar on 22/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookLable: UILabel!
    
    func displayContent(image: UIImageView, title: UILabel) {
        self.bookImage = image
        self.bookLable = title
    }
}
