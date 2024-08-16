//
//  PlayerView.swift
//  URLVideoPlayerTest
//
//  Created by Jae hyung Kim on 8/16/24.
//

import SwiftUI
import AVKit

struct PlayerView: View {
    
    var body: some View {
        ForEach(URLTest.allCases, id: \.self) { caseOf in
            VideoPlayer(player: AVPlayer(url: caseOf.url!)) {
                EmptyView()
            }
        }
    }
}
