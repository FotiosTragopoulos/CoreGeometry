//
//  Ana3ViewLine.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 22/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Ana3ViewLine: UIView {

    override func draw(_ rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize(width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 15)
        context?.saveGState()
        
        context?.setLineWidth(5.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        
        let xView = viewWithTag(56)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(56)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(56)?.frame.size.width
        let height = self.viewWithTag(56)?.frame.size.height
        let size = CGSize(width: width! * 0.6, height: height! * 0.6)
        
        let linePlacementX = CGFloat(size.width/1.8)
        let linePlacementY = CGFloat(size.height/2.8)
        
        context?.move(to: CGPoint(x: (xView! - linePlacementX * 0.8), y: (yView! + linePlacementY * 2)))
        context?.addLine(to: CGPoint(x: (xView! + linePlacementX * 0.94), y: (yView! - linePlacementY)))
        
        context?.strokePath()
        context?.restoreGState()
        
        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
