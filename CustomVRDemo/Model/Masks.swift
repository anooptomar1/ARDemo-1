//
//  Masks.swift
//  CustomVRDemo
//
//  Created by zhangzheng on 2017/9/27星期三.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

struct Masks: OptionSet {
    let rawValue: Int
    static let ship = Masks(rawValue: 1 << 0)
    static let bullet = Masks(rawValue: 1 << 1)
}
