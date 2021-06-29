//
//  ContentView.swift
//  RTLSample
//
//  Created by Soheil  Novinfard on 29/06/2021.
//

import SwiftUI

struct ContentView: View {
    let text = "این یک متن تست است. در این متن به بررسی عملکرد زبان های راست به چپ می‌پردازیم."

    @Environment(\.layoutDirection) var direction

    var body: some View {
        VStack(spacing: 16) {
            Text(text)
            HStack {
                Spacer()
                    .frame(width: 16)
                image
                Spacer()
            }
            Spacer()
        }
    }

    @ViewBuilder
    var image: some View {
        if direction == .rightToLeft {
            Image(systemName: "pencil.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(90))
        } else {
            Image(systemName: "pencil.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.layoutDirection, .leftToRight)
                .previewDisplayName("Left to Right")

            ContentView()
                .environment(\.layoutDirection, .rightToLeft)
                .previewDisplayName("Right To Left")
        }
        .previewLayout(.fixed(width: 400, height: 200))
    }
}
