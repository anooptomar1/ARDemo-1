//
//  PlaySoundEffect.swift
//  CustomVRDemo
//
//  Created by zhangzheng on 2017/9/28星期四.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

import AVFoundation

func playSound(of effect: SoundEffects)  {
    OperationQueue.main.addOperation {
        let player : AVAudioPlayer!
        if let url = Bundle.main.url(forResource: effect.rawValue, withExtension: "mp3", subdirectory: "resource") {
            player = try? AVAudioPlayer(contentsOf: url)
            player.play()
            print("播放成功")
        }
    }
}

enum SoundEffects: String {
    case explosion = "explosion"
    case collision = "collision"
    case torpedo = "torpedo"
}

