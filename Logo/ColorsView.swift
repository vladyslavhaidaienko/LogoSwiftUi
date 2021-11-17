//
//  ColorsView.swift
//  Logo
//
//  Created by Vladyslav Haidaienko on 17.11.2021.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearLine = size * 0.2
            let farLine = size * 0.8
            let middle = size / 2
            let point = size * 1.3
            let minusPoint = size * (-0.3)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: point, y: minusPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: point, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: minusPoint, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: minusPoint, y: minusPoint)
                )
            }
            .fill(Color.red)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: point, y: minusPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: point, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: minusPoint, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: minusPoint, y: minusPoint)
                )
            }
            .fill(.orange)
            .scaleEffect(0.85)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: point, y: minusPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: point, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: minusPoint, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: minusPoint, y: minusPoint)
                )
            }
            .fill(.yellow)
            .scaleEffect(0.7)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: point, y: minusPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: point, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: minusPoint, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: minusPoint, y: minusPoint)
                )
            }
            .fill(.green)
            .scaleEffect(0.55)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: point, y: minusPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: point, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: minusPoint, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: minusPoint, y: minusPoint)
                )
            }
            .fill(.blue)
            .scaleEffect(0.4)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: point, y: minusPoint)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: point, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middle),
                    control: CGPoint(x: minusPoint, y: point)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearLine),
                    control: CGPoint(x: minusPoint, y: minusPoint)
                )
            }
            .fill(.purple)
            .scaleEffect(0.25)
        }
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
            .frame(width: 200, height: 200)
    }
}
