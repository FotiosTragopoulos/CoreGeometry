//
//  Cir2ViewArc.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 15/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Cir2ViewArc: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0).cgColor)
        
        let xView = viewWithTag(17)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(17)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(17)?.frame.size.width
        let height = self.viewWithTag(17)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.8)
        
        let rectPlacementX = CGFloat(size.width/2)
        let rectPlacementY = CGFloat(size.height/2)
        
        let center = CGPoint(x: xView!, y: yView!)
        let radius = CGFloat(xView! * 0.82)
        let startAngle = CGFloat(11)
        let endAngle = CGFloat(15.7)
        
        context?.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        context?.move(to: CGPoint(x: xView!, y: yView! - rectPlacementY))
        context?.addLine(to: CGPoint(x: xView!, y: yView!))
        context?.addLine(to: CGPoint(x: (xView! - rectPlacementX), y: yView!))
        
        
        let dashArray:[CGFloat] = [10, 4]
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
