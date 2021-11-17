//
//  LogoVH.swift
//  Logo
//
//  Created by Vladyslav Haidaienko on 16.11.2021.
//

import SwiftUI

struct LogoVH: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let hight = geometry.size.height
            let size = min(width, hight)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let beforeMiddle = middle * 0.7
            let afterMiddle = middle + nearLine
            let bottomV = farLine - nearLine
            let topV = nearLine * 1.1
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: size, y: middle),
                    control: CGPoint(x: size, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: size),
                    control: CGPoint(x: size, y: size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: 0, y: middle),
                    control: CGPoint(x: 0, y: size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: 0),
                    control: CGPoint(x: 0, y: 0)
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.mint, .purple]),
                    center: .center,
                    startRadius: width * 0.05,
                    endRadius: width * 0.5
                )
            )
            .frame(width: 200, height: 200)
            
            Path { path in
                path.move(to: CGPoint(x: nearLine, y: topV))
                path.addLine(to: CGPoint(x: beforeMiddle, y: bottomV))
                path.addLine(to: CGPoint(x: afterMiddle, y: topV))
            }
            .stroke(Color.black, lineWidth: 13)
            .shadow(color: .white, radius: 10, x: 0, y: 0)
            .offset(x: 5)
            .scaleEffect(0.9)
            
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(Color.white, lineWidth: 13)
            .shadow(color: .white, radius: 10, x: 0, y: 0)
            .scaleEffect(0.9)
            
            Path { path in
                path.move(to: CGPoint(x: farLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
            }
            .stroke(Color.white, lineWidth: 13)
            .shadow(color: .white, radius: 10, x: 0, y: 0)
            .offset(x: -9)
            .scaleEffect(0.9)
            
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: farLine, y: middle))
            }
            .stroke(Color.white, lineWidth: 13)
            .shadow(color: .white, radius: 10, x: 0, y: 0)
            .offset(x: -6)
            .scaleEffect(0.9)
            
        }
    }
}

struct LogoVH_Previews: PreviewProvider {
    static var previews: some View {
        LogoVH()
            .frame(width: 200, height: 200)
    }
}
