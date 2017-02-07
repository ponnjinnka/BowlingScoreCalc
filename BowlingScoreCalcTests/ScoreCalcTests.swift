//
//  ScoreCalcTests.swift
//  BowlingScoreCalc
//
//  Created by ryota on 2017/02/01.
//  Copyright © 2017年 Ryota Kato. All rights reserved.
//

import Quick
import Nimble

@testable import BowlingScoreCalc

class ScoreCalcTests: QuickSpec {
    var subject: ScoreCalc?
    
    override func spec() {
        describe("スコア計算処理のテスト") {
            beforeEach {
                self.subject = ScoreCalc()
            }
            it("ストライクもスペアも存在しないスコアを渡すとすべての合計値となること") {
                let scoreSheet = "1234543212"
                let totalScore = self.subject?.calcTotalScore(scoreSheet)
                expect(totalScore) == 27
            }
        }
    }
}
