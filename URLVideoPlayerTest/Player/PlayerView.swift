//
//  PlayerView.swift
//  URLVideoPlayerTest
//
//  Created by Jae hyung Kim on 8/16/24.
//

import SwiftUI
import AVKit

struct PlayerView: View {
    
    @State var currentURL: URL? = nil
    
    var body: some View {
        ForEach(URLTest.allCases, id: \.self) { caseOf in
            WebViewPlayer(url: caseOf.url!, clickedURL: $currentURL)
                .onChange(of: currentURL) { newValue in
                    if let newValue {
                        print("클릭된 URL: \(newValue)")
                    }
                }
        }
    }
}
