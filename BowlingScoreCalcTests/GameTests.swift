//
//  GameTests.swift
//  BowlingScoreCalc
//
//  Created by ryota on 2017/02/06.
//  Copyright © 2017年 Ryota Kato. All rights reserved.
//

import Quick
import Nimble

@testable import BowlingScoreCalc

class GameTests: QuickSpec {
    var subject: Game?
    
    override func spec() {
        describe("フレーム追加のテスト") {
            beforeEach {
                self.subject = Game()
            }
            it("フレーム追加を1回行うと配列に1回分フレームが追加されていること") {
                self.subject?.addFrame(8, secondScore: 1)
                expect(self.subject?.frames.count) == 1
                expect(self.subject?.totalFrameCount)  == 1
            }
            it("フレーム追加を3度行うと配列に3回分のフレームが追加されフレーム合計が3になっていること") {
                self.subject?.addFrame(10, secondScore: 0)
                self.subject?.addFrame(8, secondScore: 2)
                self.subject?.addFrame(7, secondScore: 1)
                expect(self.subject?.frames.count) == 3
                expect(self.subject?.totalFrameCount) == 3
            }
        }
    }
}
