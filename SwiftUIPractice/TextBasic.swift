//
//  TextBasic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 12/29/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font Size를 title, body, footnote 등으로 정하는 법(미리 정해준 사이즈이며 반응형)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .bold()
                .underline()
                .italic()
                .foregroundColor(.red)
                .strikethrough(true, color: Color.green)
            
            // Font Size를 고정으로 정하는 법
            Text("Hello, World! 2".uppercased())
                .font(.system(size: 25, weight: .bold, design: .serif))
            
            // Multi-Line Text
            Text("Hello, World! Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!, Hello, World!")
                .multilineTextAlignment(.leading)
                .foregroundStyle(.blue)
        }
    }
}
 
#Preview {
    TextBasic()
}
