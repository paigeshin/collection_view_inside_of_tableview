//
//  TableViewCell.swift
//  collection_view_inside_of_table_view
//
//  Created by shin seunghyun on 2020/05/10.
//  Copyright © 2020 shin seunghyun. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    var models = [Model]()
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        models.append(Model(text: "First", imageName: "image_1"))
        models.append(Model(text: "Second", imageName: "image_2"))
        models.append(Model(text: "Third", imageName: "image_3"))
        models.append(Model(text: "Fourth", imageName: "image_4"))
        
        
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        cell.collectionLabel.text = models[indexPath.row].text
        cell.collectionImageView.image = UIImage(named: models[indexPath.row].imageName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
    
    
}
