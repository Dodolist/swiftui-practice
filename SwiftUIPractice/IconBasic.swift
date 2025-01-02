//
//  IconBasic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 1/2/25.
//

// Download SF-Symbols
// Link: https://developer.apple.com/sf-symbols/

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Image(systemName: "person.fill.badge.plus")
                    .resizable() // 전체 화면에 꽉 참
                    // renderMode에서 Original로 하게 되면 실제 color -> multi color로 변경됨
                    // 변경하려고 해도 변경되지 않음
                    .renderingMode(.template)
                    .scaledToFit()
                    .foregroundStyle(Color("--Primary-Blue"))
                Image(systemName: "person.fill.badge.plus")
                    .resizable() // 전체 화면에 꽉 참
                    // renderMode에서 Original로 하게 되면 실제 color -> multi color로 변경됨
                    // 변경하려고 해도 변경되지 않음
                    .renderingMode(.original)
                    .scaledToFit()
                    .foregroundStyle(Color("--Primary-Blue"))
            }
            .padding(24)
            HStack(spacing: 20) {
                Image(systemName: "person.badge.plus")
                    .resizable() // 전체 화면에 꽉 참
                    // renderMode에서 Original로 하게 되면 실제 color -> multi color로 변경됨
                    // 변경하려고 해도 변경되지 않음
                    .renderingMode(.template)
                    .scaledToFit()
                    .foregroundStyle(Color("--Primary-Blue"))
                Image(systemName: "person.badge.plus")
                    .resizable() // 전체 화면에 꽉 참
                    // renderMode에서 Original로 하게 되면 실제 color -> multi color로 변경됨
                    // 변경하려고 해도 변경되지 않음
                    .renderingMode(.original)
                    .scaledToFit()
                    .foregroundStyle(Color("--Primary-Blue"))
            }
            .padding(24)
        }
    }
}

#Preview {
    IconBasic()
}
