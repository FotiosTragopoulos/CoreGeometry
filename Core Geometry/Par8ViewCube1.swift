//
//  Par8ViewCube1.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 13/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Par8ViewCube1: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        let filling = UIGraphicsGetCurrentContext()
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        
        let xView = viewWithTag(10)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(10)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(10)?.frame.size.width
        let height = self.viewWithTag(10)?.frame.size.height
        let size = CGSize(width: width! * 0.6, height: height! * 0.4)
        
        let linePlacementX = CGFloat(size.width/2)
        let linePlacementY = CGFloat(size.height/2)

        let myShadowOffset = CGSize (width: 10,  height: 10)
        filling?.setShadow (offset: myShadowOffset, blur: 8)
        filling?.saveGState()
        
        filling?.move(to: CGPoint(x: xView!, y: (yView! - linePlacementY * 1.8)))
        filling?.addLine(to: CGPoint(x: (xView! + linePlacementX + 30), y: (yView! - linePlacementY * 1.4)))
        filling?.addLine(to: CGPoint(x: (xView! + linePlacementX + 30), y: (yView! + linePlacementY)))
        filling?.addLine(to: CGPoint(x: xView!, y: (yView! + linePlacementY * 1.7)))
        filling?.addLine(to: CGPoint(x: (xView! - linePlacementX - 30), y: (yView! + linePlacementY)))
        filling?.addLine(to: CGPoint(x: (xView! - linePlacementX - 30), y: (yView! - linePlacementY * 1.4)))
        filling?.addLine(to: CGPoint(x: xView!, y: (yView! - linePlacementY * 1.8)))
        
        filling?.setFillColor(UIColor.white.cgColor)
        filling?.fillPath()
        filling?.restoreGState()
        
        context?.move(to: CGPoint(x: xView!, y: (yView! - linePlacementY * 1.8)))
        context?.addLine(to: CGPoint(x: (xView! + linePlacementX + 30), y: (yView! - linePlacementY * 1.4)))
        context?.addLine(to: CGPoint(x: (xView! + linePlacementX + 30), y: (yView! + linePlacementY)))
        context?.addLine(to: CGPoint(x: xView!, y: (yView! + linePlacementY * 1.7)))
        context?.addLine(to: CGPoint(x: (xView! - linePlacementX - 30), y: (yView! + linePlacementY)))
        context?.addLine(to: CGPoint(x: (xView! - linePlacementX - 30), y: (yView! - linePlacementY * 1.4)))
        context?.addLine(to: CGPoint(x: xView!, y: (yView! - linePlacementY * 1.8)))
        
        context?.move(to: CGPoint(x: xView!, y: (yView! + linePlacementY * 1.7)))
        context?.addLine(to: CGPoint(x: xView!, y: (yView! - linePlacementY)))
        context?.addLine(to: CGPoint(x: (xView! - linePlacementX - 30), y: (yView! - linePlacementY * 1.4)))
        context?.move(to: CGPoint(x: xView!, y: (yView! - linePlacementY)))
        context?.addLine(to: CGPoint(x: (xView! + linePlacementX + 30), y: (yView! - linePlacementY * 1.4)))
        
        let dashArray:[CGFloat] = [10, 4]
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.strokePath()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
