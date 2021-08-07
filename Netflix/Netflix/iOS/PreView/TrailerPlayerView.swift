//
//  TrailerPlayerView.swift
//  Netflix
//
//  Created by Lien-Tai Kuo on 2021/7/31.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {

    var videoURL: URL?

    @Binding var playVideo: Bool

    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(videoURL: nil, playVideo: .constant(true))
    }
}
