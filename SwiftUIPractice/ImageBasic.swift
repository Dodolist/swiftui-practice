//
//  ImageBasic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 1/2/25.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("heart-red")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .cornerRadius(48)
            
            Divider()
            
            Image("heart-blue")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            
            Divider()
            
            Image("heart-blue")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 24, style: .circular))
        }
    }
}

#Preview {
    ImageBasic()
}
