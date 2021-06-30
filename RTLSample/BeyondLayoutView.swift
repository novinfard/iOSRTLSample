//
//  BeyondLayoutView.swift
//  RTLSample
//
//  Created by Soheil  Novinfard on 30/06/2021.
//

import SwiftUI

struct BeyondLayoutView: View {
    var body: some View {
        VStack {
            // a Persian number
            Text(String("۱۲۳۱۲۳۵۶"))

            // a Persian number converted to its English equivalent
            Text(String("۱۲۳۱۲۳۵۶".toEnglishNumberInt ?? 0))
        }
    }
}

struct BeyondLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BeyondLayoutView()
                .environment(\.layoutDirection, .leftToRight)
                .previewDisplayName("Left to Right")

            BeyondLayoutView()
                .environment(\.layoutDirection, .rightToLeft)
                .previewDisplayName("Right To Left")
        }
        .previewLayout(.fixed(width: 400, height: 300))
    }
}
