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
    var result: Result?
    
    init(_ firstScore: Int, secondScore: Int, frameNumber: Int) {
        // frameScoreを受取、frameScoreに格納してtotalScoreを一旦出す
        self.firstScore = firstScore
        self.secondScore = secondScore
        self.frameNumber = frameNumber
        self.frameScore = calcFrameScore(firstScore, secondScore: secondScore)
        self.result = judgeResult(firstScore, secondScore: secondScore)
    }
    
    func calcFrameScore(_ firstScore: Int, secondScore: Int) -> Int {
        return firstScore + secondScore
    }
    
    // 1フレームの結果を判定する
    func judgeResult(_ firstScore: Int, secondScore: Int) -> Result {
        if ( firstScore == 10) {
            return Result.strike
        } else if (firstScore + secondScore == 10) {
            return Result.spare
        } else {
            return Result.normal
        }
    }
}
