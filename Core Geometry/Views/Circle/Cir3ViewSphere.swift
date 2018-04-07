//
//  Cir3ViewSphere.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 16/01/2017.
//  Copyright © 2017 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class Cir3ViewSphere: UIView {

    override func draw(_ rect: CGRect)
    {
        let context = UIGraphicsGetCurrentContext()
        
        let myShadowOffset = CGSize (width: 10,  height: 10)
        context?.setShadow (offset: myShadowOffset, blur: 8)
        context?.saveGState()
        
        let locations: [CGFloat] = [0.0, 0.5, 1.0]
        
        let colors = [UIColor.white.cgColor,
                      UIColor.lightGray.cgColor,
                      UIColor.darkGray.cgColor]
        
        let colorspace = CGColorSpaceCreateDeviceRGB()
        
        let gradient = CGGradient(colorsSpace: colorspace,
                                  colors: colors as CFArray, locations: locations)
        
        let xView = viewWithTag(18)?.alignmentRect(forFrame: rect).midX
        let yView = viewWithTag(18)?.alignmentRect(forFrame: rect).midY
        
        let width = self.viewWithTag(18)?.frame.size.width
        let height = self.viewWithTag(18)?.frame.size.height
        let size = CGSize(width: width! * 0.8, height: height! * 0.8)
        
        let rectPlacementX = CGFloat(size.width/2)
        
        var startPoint =  CGPoint()
        var endPoint  = CGPoint()
        
        startPoint.x = xView! + 50
        startPoint.y = yView! - 50
        endPoint.x = xView!
        endPoint.y = yView!
        let startRadius = CGFloat(0.0)
        let endRadius = rectPlacementX

        context?.drawRadialGradient(gradient!, startCenter: startPoint, startRadius: startRadius, endCenter: endPoint, endRadius: endRadius, options: [])
        context?.restoreGState()

        self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { self.transform = CGAffineTransform.identity } ,completion: nil)
    }
}
