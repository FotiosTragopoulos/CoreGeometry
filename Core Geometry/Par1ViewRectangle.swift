//
//  Par1_View.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 11/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Par1ViewRectangle: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        
        let xView = viewWithTag(1)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(1)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(1)?.frame.size.width
        let height = self.viewWithTag(1)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.4)
        
        let rectPlacementX = CGFloat(size.width/2)
        let rectPlacementY = CGFloat(size.height/2)
        
        let shapePosition = CGPoint(x: (xView! - rectPlacementX), y: (yView! - rectPlacementY))
        
        let rectangle = CGRect(origin: shapePosition, size: size)
        
        let dashArray:[CGFloat] = [10, 4]
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.addRect(rectangle)
        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
