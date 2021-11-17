//
//  Stop.swift
//  Logo
//
//  Created by Vladyslav Haidaienko on 16.11.2021.
//

import SwiftUI

struct Stop: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let hight = geometry.size.height
            let size = min(width, hight)
            let middle = size / 2
            let oneOfTheThird = size / 3
            let twoOfTheThird = oneOfTheThird * 2
            let halfOfOneOfTheThird = oneOfTheThird / 2
            let halfOfHalfOfTheThird = halfOfOneOfTheThird / 2
            
//            Path { path in
//                path.move(to: CGPoint(x: oneOfTheThird, y: 0))
//                path.addLine(to: CGPoint(x: twoOfTheThird, y: 0))
//                path.addLine(to: CGPoint(x: size, y: oneOfTheThird))
//                path.addLine(to: CGPoint(x: size, y: twoOfTheThird))
//                path.addLine(to: CGPoint(x: twoOfTheThird, y: size))
//                path.addLine(to: CGPoint(x: oneOfTheThird, y: size))
//                path.addLine(to: CGPoint(x: 0, y: twoOfTheThird))
//                path.addLine(to: CGPoint(x: 0, y: oneOfTheThird))
//                path.closeSubpath()
//            }
//            .fill(.black)
//            
//            Path { path in
//                path.move(to: CGPoint(x: oneOfTheThird, y: 0))
//                path.addLine(to: CGPoint(x: twoOfTheThird, y: 0))
//                path.addLine(to: CGPoint(x: size, y: oneOfTheThird))
//                path.addLine(to: CGPoint(x: size, y: twoOfTheThird))
//                path.addLine(to: CGPoint(x: twoOfTheThird, y: size))
//                path.addLine(to: CGPoint(x: oneOfTheThird, y: size))
//                path.addLine(to: CGPoint(x: 0, y: twoOfTheThird))
//                path.addLine(to: CGPoint(x: 0, y: oneOfTheThird))
//                path.closeSubpath()
//            }
//            .fill(.red)
//            .scaleEffect(0.93)
//            
//            Path { path in
//                path.addArc(
//                    center: CGPoint(x: halfOfOneOfTheThird + halfOfHalfOfTheThird,
//                                    y: middle + halfOfHalfOfTheThird),
//                    radius: halfOfHalfOfTheThird,
//                    startAngle: .degrees(90),
//                    endAngle: .degrees(270),
//                    clockwise: true
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            
//            Path { path in
//                path.addArc(
//                    center: CGPoint(x: halfOfOneOfTheThird + halfOfHalfOfTheThird,
//                                    y: middle - halfOfHalfOfTheThird),
//                    radius: halfOfHalfOfTheThird,
//                    startAngle: .degrees(270),
//                    endAngle: .degrees(90),
//                    clockwise: true
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            
//            Path { path in
//                path.move(
//                    to: CGPoint(
//                        x: oneOfTheThird - halfOfHalfOfTheThird,
//                        y: oneOfTheThird
//                    )
//                )
//                path.addLine(
//                    to: CGPoint(
//                        x: oneOfTheThird - (halfOfHalfOfTheThird / 2),
//                        y: oneOfTheThird
//                    )
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            
//            Path { path in
//                path.move(
//                    to: CGPoint(
//                        x: oneOfTheThird - halfOfHalfOfTheThird,
//                        y: twoOfTheThird
//                    )
//                )
//                path.addLine(
//                    to: CGPoint(
//                        x: halfOfOneOfTheThird + (halfOfHalfOfTheThird / 2),
//                        y: twoOfTheThird
//                    )
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            
//            Path { path in
//                path.move(to: CGPoint(x: middle, y: oneOfTheThird))
//                path.addLine(to: CGPoint(x: oneOfTheThird, y: oneOfTheThird))
//            }
//            .stroke(Color.white, lineWidth: 5)
//
//            Path { path in
//                path.move(to: CGPoint(x: middle, y: oneOfTheThird))
//                path.addLine(to: CGPoint(x: middle, y: twoOfTheThird))
//            }
//            .stroke(Color.white, lineWidth: 5)
//            .offset(x: -halfOfHalfOfTheThird)
//
//            Path { path in
//                path.move(to: CGPoint(x: middle, y: middle))
//                path.addQuadCurve(
//                    to: CGPoint(x: twoOfTheThird, y: middle),
//                    control: CGPoint(
//                        x: middle + halfOfHalfOfTheThird,
//                        y: halfOfOneOfTheThird
//                    )
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            .offset(x: 4)
//
//            Path { path in
//                path.move(to: CGPoint(x: middle, y: middle))
//                path.addQuadCurve(
//                    to: CGPoint(x: twoOfTheThird, y: middle),
//                    control: CGPoint(
//                        x: middle + halfOfHalfOfTheThird,
//                        y: twoOfTheThird + halfOfOneOfTheThird
//                    )
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            .offset(x: 4)
//
//            Path { path in
//                path.move(
//                    to: CGPoint(
//                        x: twoOfTheThird + halfOfHalfOfTheThird,
//                        y: oneOfTheThird
//                    )
//                )
//                path.addLine(
//                    to: CGPoint(
//                        x: twoOfTheThird + halfOfHalfOfTheThird,
//                        y: twoOfTheThird
//                    )
//                )
//
//            }
//            .stroke(Color.white, lineWidth: 5)
//
//            Path { path in
//                path.addArc(
//                    center: CGPoint(x: twoOfTheThird + halfOfHalfOfTheThird,
//                                    y: middle - halfOfHalfOfTheThird),
//                    radius: halfOfHalfOfTheThird,
//                    startAngle: .degrees(90),
//                    endAngle: .degrees(270),
//                    clockwise: true
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//            .offset(x: halfOfHalfOfTheThird)
//
//            Path { path in
//                path.move(
//                    to: CGPoint(
//                        x: twoOfTheThird + halfOfHalfOfTheThird,
//                        y: oneOfTheThird
//                    )
//                )
//                path.addLine(
//                    to: CGPoint(
//                        x: twoOfTheThird + halfOfOneOfTheThird,
//                        y: oneOfTheThird
//                    )
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
//
//            Path { path in
//                path.move(
//                    to: CGPoint(
//                        x: twoOfTheThird + halfOfHalfOfTheThird,
//                        y: middle
//                    )
//                )
//                path.addLine(
//                    to: CGPoint(
//                        x: twoOfTheThird + halfOfOneOfTheThird,
//                        y: middle
//                    )
//                )
//            }
//            .stroke(Color.white, lineWidth: 5)
        }
    }
}

struct Stop_Previews: PreviewProvider {
    static var previews: some View {
        Stop()
            .frame(width: 200, height: 200)
    }
}
