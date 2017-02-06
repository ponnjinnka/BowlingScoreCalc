//
//  Game.swift
//  BowlingScoreCalc
//
//  Created by ryota on 2017/02/01.
//  Copyright © 2017年 Ryota Kato. All rights reserved.
//

import Foundation

/* 複数のフレームから成り立つボウリングの1ゲーム */
class Game {
    
    var frames =  [Frame]()
    var totalFrameCount = 0
    
    func addFrame(_ firstScore: Int, secondScore: Int) {
        let frame = Frame(firstScore, secondScore:
            secondScore,frameNumber: totalFrameCount)
        frames.append(frame)
        totalFrameCount += 1
    }
    
}
