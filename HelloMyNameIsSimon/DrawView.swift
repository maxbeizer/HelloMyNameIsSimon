//
//  DrawView.swift
//  HelloMyNameIsSimon
//
//  Created by Max Beizer on 2/11/15.
//  Copyright (c) 2015 Max Beizer. All rights reserved.
//

import UIKit

class DrawView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    // NSSet is guaranteed to have unique value
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let point = touch.locationInView(self)
        println(point)
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let point = touch.locationInView(self)
        println(point)
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        let touch = touches.anyObject() as UITouch
        let point = touch.locationInView(self)
        println(point)
    }

}
