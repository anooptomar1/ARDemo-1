//
//  NewShip.swift
//  CustomVRDemo
//
//  Created by zhangzheng on 2017/9/27星期三.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

import SceneKit
import ARKit
extension ARSCNView {
    func addShip() {
        let ship = Ship()
        
        let x = (-0.5).random(0.5)
        let y = (-0.5).random(0.5)
        
        ship.position = SCNVector3(x ,y , -1.0)
        
        self.scene.rootNode.addChildNode(ship)
    }
    func random(min: Double, max: Double) -> Float {
        let y = arc4random() % UInt32(max) + UInt32(min)
        return Float(y)
    }
}
extension Double {
    func random(_ end: Double) -> Float {
        // 随机0到1之间的小数
        let factor = Double(arc4random()) / Double(UInt32.max)
        
        return Float(end - factor * (end - self))
    }
}
