//
//  DetailModel.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 31/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class DetailModel {
    private var _cellImage : UIImage!
    private var _cellTitle : String!
    
    var cellImage: UIImage {
        return _cellImage
    }
    
    var cellTitle: String {
        return _cellTitle
    }
    
    init(cellImage: UIImage, cellTitle: String) {
        _cellImage = cellImage
        _cellTitle = cellTitle
    }
}
