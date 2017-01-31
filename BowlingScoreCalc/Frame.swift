//
//  Frame.swift
//  BowlingScoreCalc
//
//  Created by ryota on 2017/02/01.
//  Copyright © 2017年 Ryota Kato. All rights reserved.
//

import Foundation

/* ボーリングの各フレームのスコアとか持つクラス */
class Frame {
    // 1投目のスコア
    var firstScore: Int?
    var secondScore: Int?
    var frameNumber: Int?
    var bonusScore: Int?
    var frameScore: Int?
    
    init(_ firstScore: Int, secondScore: Int, frameNumber: Int) {
        // frameScoreを受取、frameScoreに格納してtotalScoreを一旦出す
        self.firstScore = firstScore
        self.secondScore = secondScore
        self.frameNumber = frameNumber
        self.frameScore = calcFrameScore(firstScore, secondScore: secondScore)
    }
    
    func calcFrameScore(_ firstScore: Int, secondScore: Int) -> Int {
        return firstScore + secondScore
    }
}
