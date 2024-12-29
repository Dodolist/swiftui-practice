//
//  ShapeBasic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 12/29/24.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                Text("원형")
                    .font(.title)
                Circle()
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 24, lineCap: .butt, dash: [2]))
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                
                Text("타원형")
                    .font(.title)
                Ellipse()
                    .fill(Color.blue)
                    .frame(width: 200, height: 100, alignment: .center)
                    .padding()
                
                Text("캡슐형")
                    .font(.title)
                Capsule(style: .continuous)
                    .stroke(Color.blue, style: StrokeStyle(lineWidth: 8, lineCap: .round, dash: [16]))
                    .frame(width: 200, height: 100, alignment: .center)
                    .padding()
            }
            .frame(width: UIScreen.main.bounds.width)
            .background(Color.gray.opacity(0.2))
            
            VStack(spacing: 20) {
                Text("직사각형")
                Rectangle()
                    .frame(width: 200, height: 100, alignment: .center)
                
                Text("둥근 직사각형")
                RoundedRectangle(cornerRadius: 24, style: .circular)
                    .trim(from: 0.0, to: 0.7)
                    .frame(width: 100, height: 200, alignment: .center)
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .trim(from: 0.0, to: 0.3)
                    .frame(width: 100, height: 200, alignment: .center)
            }
            .frame(width: UIScreen.main.bounds.width)
            .background(Color.gray.opacity(0.1))
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    ShapeBasic()
}
