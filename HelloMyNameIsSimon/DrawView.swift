//
//  DrawView.swift
//  HelloMyNameIsSimon
//
//  Created by Max Beizer on 2/11/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var allPoints = [CGPoint]()

    override func drawRect(rect: CGRect) {
        let currentContext = UIGraphicsGetCurrentContext()
        self.drawPoints(self.allPoints, context: currentContext)
    }
    
    func drawPoints(points: [CGPoint], context: CGContextRef) {
        if points.count > 1 {
            let path = CGPathCreateMutable()
            let firstPoint = points[0]
            CGPathMoveToPoint(path, nil, firstPoint.x, firstPoint.y)
            
            for pointIndex in 1..<points.count {
                let point = points[pointIndex] as CGPoint
                CGPathAddLineToPoint(path, nil, point.x, point.y)
            }
            
            CGContextSetStrokeColorWithColor(context, UIColor.blackColor().CGColor)
            CGContextSetLineWidth(context, 5.0)
            CGContextAddPath(context, path)
            CGContextDrawPath(context, kCGPathStroke)
        }
    }

    // NSSet is a collection guaranteed to have unique values
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let point = touch.locationInView(self)
        self.allPoints.append(point)
        self.setNeedsDisplay()
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let point = touch.locationInView(self)
        self.allPoints.append(point)
        self.setNeedsDisplay()
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let point = touch.locationInView(self)
        self.allPoints.append(point)
        self.setNeedsDisplay()
    }

}
