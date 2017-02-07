//
//  ScoreCalc.swift
//  BowlingScoreCalc
//
//  Created by ryota on 2017/02/01.
//  Copyright © 2017年 Ryota Kato. All rights reserved.
//

import Foundation

class ScoreCalc {
    
    // 合計スコア算出処理
    func calcTotalScore(_ scoreSheet: String) -> Int {
        var frameCount = 0
        let game =  Game()
        for str in scoreSheet.characters.map({String($0)}) {
            if (frameCount%2 == 0) {
                game.addFrame()
                if (str == "X") {
                    game.addFirstScore(10)
                    game.addSecondScore(0)
                    frameCount += 2
                } else {
                    game.addFirstScore(Int(str)!)
                    frameCount += 1
                }
            } else {
                //2投目
                if(str == "X") {
                    game.addSecondScore(10)
                    frameCount += 1
                } else {
                    game.addSecondScore(Int(str)!)
                    frameCount += 1
                }
            }
        }
        var score = 0
        for i in 0...game.frames.count - 1 {
            game.frames[i].calcFrameScore()
            score += game.frames[i].frameScore
        }
        print(score)
        return score
    }
}
