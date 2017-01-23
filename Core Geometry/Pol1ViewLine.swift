//
//  Pol1ViewLine.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 16/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Pol1ViewLine: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        context?.setLineWidth(3.0)
        context?.setStrokeColor(UIColor.red.cgColor)
        
        let xView = viewWithTag(20)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(20)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(20)?.frame.size.width
        let height = self.viewWithTag(20)?.frame.size.height
        let size = CGSize(width: width! * 0.6, height: height! * 0.4)
        
        let linePlacementY = CGFloat(size.height/1.6)
        
        context?.move(to: CGPoint(x: xView!, y: yView!))
        context?.addLine(to: CGPoint(x: xView!, y: (yView! + (linePlacementY * 1.3))))
        
        let dashArray:[CGFloat] = [10, 4]
        context?.setLineDash(phase: 3, lengths: dashArray)
        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
