//
//  PopularCollectionViewCell.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        //dishImageView.image = UIImage(named: "pizza")
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        descLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }
    
}
