//
//  Cyl1ViewFilling.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 20/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Cyl1ViewFilling: UIView {

    override func draw(_ rect: CGRect) {
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
