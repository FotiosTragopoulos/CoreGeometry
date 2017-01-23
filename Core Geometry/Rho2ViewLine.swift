//
//  Rho2ViewLine.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 16/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Rho2ViewLine: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.red.cgColor)
        
        let xView = viewWithTag(28)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(28)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(28)?.frame.size.width
        let height = self.viewWithTag(28)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.8)
        
        let linePlacementX = CGFloat(size.width/2)
        let linePlacementY = CGFloat(size.height/2)
        
        context?.move(to: CGPoint(x: (xView! - (linePlacementX * 0.8)), y: yView!))
        context?.addLine(to: CGPoint(x: (xView! + (linePlacementX * 0.8)), y: yView!))
        context?.move(to: CGPoint(x: xView!, y: (yView! - linePlacementY)))
        context?.addLine(to: CGPoint(x: xView!, y: (yView! + linePlacementY)))

        let dashArray:[CGFloat] = [10, 4]
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
