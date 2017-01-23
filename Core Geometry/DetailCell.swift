//
//  DetailCell.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 31/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {

    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var previewTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.transform = CGAffineTransform(translationX: -300, y: 0)
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: CGFloat(0.6), initialSpringVelocity: CGFloat(60.0), options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity }, completion: nil)
    }

    func updateUI(detailModel: DetailModel) {
        previewTitle.text = detailModel.cellTitle
        previewImage.image = detailModel.cellImage
    }

}
