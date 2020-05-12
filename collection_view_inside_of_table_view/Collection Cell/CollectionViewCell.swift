//
//  CollectionViewCell.swift
//  collection_view_inside_of_table_view
//
//  Created by shin seunghyun on 2020/05/10.
//  Copyright © 2020 shin seunghyun. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionImageView: UIImageView!
    @IBOutlet weak var collectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
