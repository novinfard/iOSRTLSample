//
//  ContentView.swift
//  RTLSample
//
//  Created by Soheil  Novinfard on 29/06/2021.
//

import SwiftUI

struct ContentView: View {
    let text = "این یک متن تست است. در این متن به بررسی عملکرد زبان های راست به چپ می‌پردازیم."

    var body: some View {
        VStack(spacing: 16) {
            Text(text)
            HStack {
                Spacer()
                    .frame(width: 16)
                Image(systemName: "pencil.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
