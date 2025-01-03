//
//  BackgroundBasic.swift
//  SwiftUIPractice
//
//  Created by 이종우 on 1/3/25.
//

import SwiftUI
// Background: 뒷배경
// Overlay: 앞배경
struct BackgroundOverlayBasic: View {
    
    var OverlayBackground: some View {
        Capsule()
            .fill(Color.red)
            .frame(width: 60, height: 120)
    }
    var body: some View {
        VStack(spacing: 20) {
            // Background
            Text("Background")
                .font(.title)
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        )
                )
                .frame(width: 200, height: 200)
                .background(
                    Circle()
                        .fill(Color.yellow)
                )
            Divider()
            // Overlay
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("Overlay")
                        .font(.title)
                        .foregroundStyle(Color.white)
                        .frame(width: 120, height: 120)
                )
            Divider()
            // Background and Overlay
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 240, height: 240)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 120, height: 120)
                        .overlay(
                            OverlayBackground
                            , alignment: .leading
                        )
                    , alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 280, height: 280)
                )
                .padding()
            
            Divider()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 48))
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.blue, Color.cyan]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                            )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.blue, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 32, height: 32)
                                .overlay(
                                    Text("2")
                                        .font(.title3)
                                        .foregroundStyle(Color.white)
                                )
                                .shadow(color: Color.white, radius: 10, x: 0, y: 4)
                            , alignment: .topTrailing
                        )
                    )
            .padding()
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
