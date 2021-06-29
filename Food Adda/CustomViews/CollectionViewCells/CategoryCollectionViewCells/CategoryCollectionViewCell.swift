//
//  CategoryCollectionViewCell.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import UIKit
import Kingfisher
class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryTitleLbl: UILabel!
    @IBOutlet weak var categoryImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(category: DishCategory) {
        //install pod for image loading
        categoryTitleLbl.text = category.title
        //categoryImageView.image = UIImage(named: "pizza")
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }

}
