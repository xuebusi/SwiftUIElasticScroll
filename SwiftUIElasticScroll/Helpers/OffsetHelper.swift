//
//  OffsetHelper.swift
//  SwiftUIElasticScroll
//
//  Created by shiyanjun on 6/3/23.
//

import SwiftUI

/// Scroll View Content Offset Using Preference Key
struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

extension View {
    /// Offset Extractor Custom View Modifier
    @ViewBuilder
    func offsetExtractor(cordinateSpace: String, completion: @escaping (CGRect) -> ()) -> some View {
        self
            .overlay {
                GeometryReader {
                    let rect = $0.frame(in: .named(cordinateSpace))
                    Color.clear
                        .preference(key: OffsetKey.self, value: rect)
                        .onPreferenceChange( OffsetKey.self, perform: completion)
                }
            }
    }
}

struct OffsetHelper_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
