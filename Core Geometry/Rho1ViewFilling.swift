//
//  Rho1ViewFilling.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 16/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Rho1ViewFilling: UIView {

    override func draw(_ rect: CGRect) {
        
        let filling = UIGraphicsGetCurrentContext()
        
        let xView = viewWithTag(25)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(25)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(25)?.frame.size.width
        let height = self.viewWithTag(25)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.8)
        
        let linePlacementX = CGFloat(size.width/2)
        let linePlacementY = CGFloat(size.height/2)
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        filling?.setShadow (offset: myShadowOffset, blur: 8)
        filling?.saveGState()
        
        filling?.move(to: CGPoint(x: (xView! - (linePlacementX * 0.8)), y: yView!))
        filling?.addLine(to: CGPoint(x: xView!, y: (yView! - linePlacementY)))
        filling?.addLine(to: CGPoint(x: (xView! + (linePlacementX * 0.8)), y: yView!))
        filling?.addLine(to: CGPoint(x: xView!, y: (yView! + linePlacementY)))
        filling?.addLine(to: CGPoint(x: (xView! - (linePlacementX * 0.8)), y: yView!))
        
        filling?.setFillColor(UIColor.white.cgColor)
        filling?.fillPath()
        filling?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
