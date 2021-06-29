//
//  OnboardingCollectionViewCell.swift
//  Food Adda
//
//  Created by MacMini1 on 01/01/01.
//  Copyright © 2001 bacancy. All rights reserved.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescLbl: UILabel!
    
    func setuo(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescLbl.text = slide.description
    }
}
