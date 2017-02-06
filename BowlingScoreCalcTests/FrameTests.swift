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
        describe("フレーム結果判定のテスト") {
            it("1投目が10点のときに結果がストライクになること") {
                expect(self.subject?.judgeResult(10, secondScore: 0)) == Result.strike
            }
            it("1投目と2投目が合わせて10点のときにスペアになること") {
                expect(self.subject?.judgeResult(4, secondScore: 6)) == Result.spare
            }
            it("1投目、2投目ともに0点のときにノーマルになること") {
                expect(self.subject?.judgeResult(0, secondScore: 0)) == Result.normal
            }
            it("1投目が10点ではなく、2投目との合計も10点でない場合にノーマルになること") {
                expect(self.subject?.judgeResult(8, secondScore: 1)) == Result.normal
            }
        }
    }
}
