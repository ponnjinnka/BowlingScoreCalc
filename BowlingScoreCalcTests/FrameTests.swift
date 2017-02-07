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
        describe("1投目の追加テスト") {
            beforeEach {
                self.subject = Frame()
            }
            it("1投目の点数が追加されていること") {
                self.subject?.addFirstScore(9)
                expect(self.subject?.firstScore) == 9            }
        }
        describe("2投目の追加テスト") {
            beforeEach {
                self.subject = Frame()
            }
            it("2投目の点数が追加されていること") {
                self.subject?.addFirstScore(1)
                self.subject?.addSecondScore(8)
                expect(self.subject?.secondScore) == 8
            }
        }
    }
}
