//
//  Par2ViewFilling.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 13/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Par2ViewFilling: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        let xView = viewWithTag(9)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(9)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(9)?.frame.size.width
        let height = self.viewWithTag(9)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.8)
        
        let squarePlacementX = CGFloat(size.width/2)
        let squarePlacementY = CGFloat(size.height/2)
        
        let shapePosition = CGPoint(x: (xView! - squarePlacementX), y: (yView! - squarePlacementY))
        
        let square = CGRect(origin: shapePosition, size: size)

        context?.setFillColor(UIColor.white.cgColor)
        context?.fill(square)
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
