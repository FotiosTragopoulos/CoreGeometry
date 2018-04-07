//
//  Con1ViewRadius.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 18/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Con1ViewRadius: UIView {

    override func draw(_ rect: CGRect)
    {
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        
        let xView = viewWithTag(32)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(32)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(32)?.frame.size.width
        let height = self.viewWithTag(32)?.frame.size.height
        let size = CGSize(width: width! * 0.785, height: height! * 0.22)
        
        let rectPlacementX = CGFloat(size.width/2)
        let rectPlacementY = CGFloat(size.height/1.2)
        
        let shapePosition = CGPoint(x: (xView! - rectPlacementX * 0.98), y: (yView! + rectPlacementY * 1.25))
        
        let rectangle = CGRect(origin: shapePosition, size: size)
        
        context?.move(to: CGPoint(x: (xView! - rectPlacementX * 0.98), y: (yView! + rectPlacementY * 1.8)))
        context?.addLine(to: CGPoint(x: (xView! * 1.02), y: (yView! + rectPlacementY * 1.8)))
        
        let dashArray:[CGFloat] = [10, 4]
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.addEllipse(in: rectangle)
        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
