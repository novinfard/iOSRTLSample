//
//  BlogView.swift
//  RTLSample
//
//  Created by Soheil  Novinfard on 29/06/2021.
//

import SwiftUI

struct BlogView: View {
    let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    @Environment(\.layoutDirection) var direction

    var body: some View {
        VStack(spacing: 16) {
            Text("Blog Title")
                .font(.title)

            Text(text)

            // Correct Pattern for the Right-to-Left layout
            HStack {
                Text("2 June 2021")
                    .font(.caption)
                Spacer()
            }

            Spacer()
        }
        .padding(16)
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BlogView()
                .environment(\.layoutDirection, .leftToRight)
                .previewDisplayName("Left to Right")

            BlogView()
                .environment(\.layoutDirection, .rightToLeft)
                .previewDisplayName("Right To Left")
        }
        .previewLayout(.fixed(width: 400, height: 300))
    }
}
