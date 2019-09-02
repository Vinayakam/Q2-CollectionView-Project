//
//  ResourceCollectionViewCell.swift
//  Q2 CollectionView Project
//
//  Created by Vinayakam Yalapalli on 01/09/19.
//  Copyright © 2019 compindia. All rights reserved.
//

import UIKit

class ResourceCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var resourceImageView: UIImageView!
    @IBOutlet weak var resourceTitleLabel: UILabel!
    @IBOutlet weak var resourceTypeLabel: UILabel!
    @IBOutlet weak var VideoButton: UIButton!
    
    func configureCell(data: Resource) {
        resourceImageView.image = UIImage(named: data.thumbnailImage)
        resourceTitleLabel.text = data.title
        resourceTypeLabel.text = data.type.rawValue
        VideoButton.isHidden = !(data.type == ResourceType.video)
    }
    
}
