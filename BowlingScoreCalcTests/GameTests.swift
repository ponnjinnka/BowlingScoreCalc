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
                self.subject?.addFrame()
                expect(self.subject?.frames.count) == 1
                expect(self.subject?.totalFrameCount)  == 1
            }
            it("フレーム追加を3度行うと配列に3回分のフレームが追加されフレーム合計が3になっていること") {
                self.subject?.addFrame()
                self.subject?.addFrame()
                self.subject?.addFrame()
                expect(self.subject?.frames.count) == 3
                expect(self.subject?.totalFrameCount) == 3
            }
        }
    }
}
