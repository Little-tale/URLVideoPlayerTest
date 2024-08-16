//
//  URLVideoPlayerTestApp.swift
//  URLVideoPlayerTest
//
//  Created by Jae hyung Kim on 8/16/24.
//

import SwiftUI

@main
struct URLVideoPlayerTestApp: App {
    var body: some Scene {
        WindowGroup {
            PlayerView()
        }
    }
}


#if DEBUG
#Preview {
    PlayerView()
}
#endif
