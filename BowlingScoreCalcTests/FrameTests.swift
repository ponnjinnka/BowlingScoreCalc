//
//  FrameTests.swift
//  BowlingScoreCalc
//
//  Created by ryota on 2017/02/01.
//  Copyright © 2017年 Ryota Kato. All rights reserved.
//

import Foundation

import Quick
import Nimble

@testable import BowlingScoreCalc

class FrameTests: QuickSpec {
    var subject: Frame?
    override func spec() {
        describe("Frameの初期化のテスト") {
            it("初期化処理で値が設定されること") {
                let firstScore = 2
                let secondScore = 5
                let frameNumber = 1
                self.subject = Frame(firstScore, secondScore: secondScore, frameNumber: frameNumber)
                expect(self.subject?.firstScore) == 2
                expect(self.subject?.secondScore) == 5
                expect(self.subject?.frameNumber) == 1
                expect(self.subject?.frameScore) == 7
            }
        }
        describe("フレームスコア算出のテスト") {
            it("1投目のスコアと2投目のスコアから合計が算出されること") {
                expect(self.subject?.calcFrameScore(2, secondScore: 3)) == 5
            }
        }
        
    }
}
