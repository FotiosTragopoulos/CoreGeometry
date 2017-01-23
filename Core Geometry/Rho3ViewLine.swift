//
//  Rho3ViewLine.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 16/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Rho3ViewLine: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.red.cgColor)
        
        let xView = viewWithTag(29)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(29)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(29)?.frame.size.width
        let height = self.viewWithTag(29)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.8)
        
        let rectPlacementY = CGFloat(size.height/2)
        
        let center = CGPoint(x: xView!, y: (yView! + rectPlacementY))
        let radius = CGFloat(xView! * 0.2)
        let startAngle = CGFloat(4.0)
        let endAngle = CGFloat(5.4)
        
        context?.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)

        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
