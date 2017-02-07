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
    var frameScore: Int!
    var result: Result?
    
    func addFirstScore(_ firstScore: Int) {
        self.firstScore = firstScore
    }
    
    func addSecondScore(_ secondScore: Int) {
        self.secondScore = secondScore
    }
    
    func calcFrameScore() {
        self.frameScore = self.firstScore! + self.secondScore!
    }
    
    func addFrameNumber(_ frameNumber: Int) {
        self.frameNumber = frameNumber
    }
    // 1フレームの結果を判定する
    func judgeResult() {
        if ( firstScore == 10) {
            self.result = Result.strike
        } else if (self.firstScore! + self.secondScore! >= 10) {
            self.result = Result.spare
            self.secondScore = 10 - self.firstScore!
        } else {
            self.result = Result.normal
        }
    }
    
    func calcBonusScore(_ firstBonus: Int, secondBonus: Int) {
        self.bonusScore =  firstBonus + secondBonus
    }
}
