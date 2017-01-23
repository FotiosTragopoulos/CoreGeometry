//
//  Ana3ViewPoint2.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 22/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Ana3ViewPoint2: UIView {

    override func draw(_ rect: CGRect)
    {
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 15)
        context?.saveGState()
        
        let xView = viewWithTag(55)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(55)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(55)?.frame.size.width
        let height = self.viewWithTag(55)?.frame.size.height
        let size = CGSize(width: width! * 0.04, height: height! * 0.04)
        
        let rectPlacementX = CGFloat(size.width * 6)
        let rectPlacementY = CGFloat(size.height * 6)
        
        let shapePosition = CGPoint(x: (xView! + rectPlacementX * 0.8), y: (yView! - rectPlacementY * 0.5))
        
        let rectangle = CGRect(origin: shapePosition, size: size)
        
        context?.setFillColor(UIColor.red.cgColor)
        context?.fillEllipse(in: rectangle)
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
