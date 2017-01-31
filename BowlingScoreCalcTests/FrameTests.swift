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
                let firstPoint = 2
                let secondPoint = 5
                let frameNumber = 1
                self.subject = Frame(firstPoint, secondPoint: secondPoint, frameNumber: frameNumber)
                expect(self.subject?.firstPoint) == 2
                expect(self.subject?.secondPoint) == 5
                expect(self.subject?.frameNumber) == 1
            }
            
        }
        
    }
}
