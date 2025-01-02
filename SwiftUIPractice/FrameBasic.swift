//
//  FrameBsic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 1/2/25.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame Basic")
                .font(.title)
                .background(Color.blue)
                .frame(width: 200, height: 200, alignment: .center)
                .background(Color.yellow)
            Divider()
            Text("Frame Basic")
                .font(.title)
                .background(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow)
        }
        
        VStack(spacing: 20) {
            Text("Frame Basic")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.yellow)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.blue)
        }
    }
}

struct FrameBasic_Previews: PreviewProvider {
    static var previews: some View {
        FrameBasic()
    }
}

//#Preview {
//    FrameBasic()
//}
