//
//  CircularView.swift
//  DesignCodeiOS15
//
//  Created by Meng To on 2022-02-25.
//

import SwiftUI

struct CircularView: View {
    var value: CGFloat = 0.2
    @State var appear = false
    var body: some View {
        Circle()
            .trim(from: 0, to: appear ? value : 0)
            .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round))
            .fill(.angularGradient(colors: [.purple, .pink, .purple], center: .center, startAngle: .degrees(0), endAngle: .degrees(360)))
            .rotationEffect(.degrees(270))
            .onAppear {
                withAnimation(.spring().delay(0.5)) {
                    appear = true
                }
            }
            .onDisappear {
                appear = false
            }
    }
}

struct CircularView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
