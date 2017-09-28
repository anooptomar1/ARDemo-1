//
//  Ship.swift
//  CustomVRDemo
//
//  Created by zhangzheng on 2017/9/27星期三.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

import UIKit
import SceneKit

class Ship: SCNNode {
    override init() {
        super.init()
        
        let box = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        self.geometry = box
        
        let shape = SCNPhysicsShape(geometry: box)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: shape)
        
        self.physicsBody?.isAffectedByGravity = false
        self.physicsBody?.categoryBitMask = 1 << 1
        self.physicsBody?.contactTestBitMask = 1 << 0
        
        let material = SCNMaterial()
        material.diffuse.contents = #imageLiteral(resourceName: "boss")
        
        self.geometry?.materials = [material,material,material,material,material,material]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
