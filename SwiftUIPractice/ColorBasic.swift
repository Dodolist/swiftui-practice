//
//  ColorBasic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 12/30/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.purple)
                .frame(width: 200, height: 100, alignment: .center)
            
            // Primary Color
            // 자동으로 다크모드 지원
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 24, style: .circular)
                .fill(Color.primary)
                .frame(width: 200, height: 100, alignment: .center)
            RoundedRectangle(cornerRadius: 24, style: .circular)
                .fill(Color.secondary)
                .frame(width: 200, height: 100, alignment: .center)
             
            // UI Color
            // UIKit에서 사용되는 Color
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 200, height: 100, alignment: .center)
            
            // Custom Color
            // Assets에 저장할 수 있음
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 24, style: .circular)
                .fill(Color("--Primary-Blue"))
                .frame(width: 200, height: 100)
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}
