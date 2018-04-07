//
//  Pol1ViewFilling.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 16/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Pol1ViewFilling: UIView {

    override func draw(_ rect: CGRect) {
        
        let filling = UIGraphicsGetCurrentContext()
        
        let xView = viewWithTag(18)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(18)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(18)?.frame.size.width
        let height = self.viewWithTag(18)?.frame.size.height
        let size = CGSize(width: width! * 0.6, height: height! * 0.4)
        
        let linePlacementX = CGFloat(size.width/1.6)
        let linePlacementY = CGFloat(size.height/1.6)
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        filling?.setShadow (offset: myShadowOffset, blur: 8)
        filling?.saveGState()
        
        filling?.move(to: CGPoint(x: (xView! - linePlacementX), y: yView!))
        filling?.addLine(to: CGPoint(x: (xView! - (linePlacementX * 0.5)), y: (yView! - (linePlacementY * 1.3))))
        filling?.addLine(to: CGPoint(x: (xView! + (linePlacementX * 0.5)), y: (yView! - (linePlacementY * 1.3))))
        filling?.addLine(to: CGPoint(x: (xView! + linePlacementX), y: yView!))
        filling?.addLine(to: CGPoint(x: (xView! + (linePlacementX * 0.5)), y: (yView! + (linePlacementY * 1.3))))
        filling?.addLine(to: CGPoint(x: (xView! - (linePlacementX * 0.5)), y: (yView! + (linePlacementY * 1.3))))
        filling?.addLine(to: CGPoint(x: (xView! - linePlacementX), y: yView!))
        
        filling?.setFillColor(UIColor.white.cgColor)
        filling?.fillPath()
        filling?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
