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
    var firstPoint: Int?
    var secondPoint: Int?
    var frameNumber: Int?
    
    init(_ firstPoint: Int, secondPoint: Int, frameNumber: Int) {
        // frameScoreを受取、frameScoreに格納してtotalScoreを一旦出す
        self.firstPoint = firstPoint
        self.secondPoint = secondPoint
        self.frameNumber = frameNumber
    }
    
    func calcFramePoint() {
        
    }
}
