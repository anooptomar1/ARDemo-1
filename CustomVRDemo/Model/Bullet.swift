//
//  Bullet.swift
//  CustomVRDemo
//
//  Created by zhangzheng on 2017/9/27星期三.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

import UIKit
import SceneKit

class Bullet: SCNNode {
    override init() {
        super.init()
        
        let sphere = SCNSphere(radius: 0.025)
        self.geometry = sphere
        
        let shape = SCNPhysicsShape(geometry: sphere)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: shape)
        
        self.physicsBody?.isAffectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 0
        self.physicsBody?.contactTestBitMask = 1 << 1
        
        let material = SCNMaterial()
        material.diffuse.contents = #imageLiteral(resourceName: "huaji")
        
        self.geometry?.materials = [material]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
