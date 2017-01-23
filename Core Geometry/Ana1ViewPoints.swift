//
//  Ana1ViewPoints.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 22/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Ana1ViewPoints: UIView {

    override func draw(_ rect: CGRect)
    {
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        let xView = viewWithTag(47)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(47)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(47)?.frame.size.width
        let height = self.viewWithTag(47)?.frame.size.height
        let size = CGSize(width: width! * 0.04, height: height! * 0.04)
        
        let rectPlacementX = CGFloat(size.width * 6)
        let rectPlacementY = CGFloat(size.height * 6)
        
        let shapePosition = CGPoint(x: (xView! - rectPlacementX), y: (yView! + rectPlacementY))
        
        let rectangle = CGRect(origin: shapePosition, size: size)
        
        context?.setFillColor(UIColor.red.cgColor)
        context?.fillEllipse(in: rectangle)
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
