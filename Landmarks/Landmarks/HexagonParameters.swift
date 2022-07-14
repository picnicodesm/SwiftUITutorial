//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by 김상민 on 2022/07/15.
//

import CoreGraphics // CGPoint를 사용할 수 있게 해줌.

/*
 Each side starts where the previous ends, moves in a straight line to the first point, and then moves over a Bézier curve at the corner to the second point. The third point controls the shape of the curve.
 */
struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    } // 육각형의 한 부분
    
    static let adjustment: CGFloat = 0.085
    
    static let segments = [
        Segment(
                   line:    CGPoint(x: 0.60, y: 0.05),
                   curve:   CGPoint(x: 0.40, y: 0.05),
                   control: CGPoint(x: 0.50, y: 0.00)
               ),
               Segment(
                   line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
                   curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
                   control: CGPoint(x: 0.00, y: 0.25 + adjustment)
               ),
               Segment(
                   line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
                   curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
                   control: CGPoint(x: 0.00, y: 0.75 - adjustment)
               ),
               Segment(
                   line:    CGPoint(x: 0.40, y: 0.95),
                   curve:   CGPoint(x: 0.60, y: 0.95),
                   control: CGPoint(x: 0.50, y: 1.00)
               ),
               Segment(
                   line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
                   curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
                   control: CGPoint(x: 1.00, y: 0.75 - adjustment)
               ),
               Segment(
                   line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
                   curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
                   control: CGPoint(x: 1.00, y: 0.25 + adjustment)
               )
    ]
}
