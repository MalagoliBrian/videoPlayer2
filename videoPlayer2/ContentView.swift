//
//  ContentView.swift
//  videoPlayer2
//
//  Created by Brian Malagoli on 26/03/2020.
//  Copyright © 2020 Brian Malagoli. All rights reserved.
//

import SwiftUI
import AVKit

struct ItemView: View {
        let videoLocalNames = "Film2"
    
    var body: some View {
        VStack {
            Spacer()
            player(videoName: videoLocalNames).scaledToFit()
            Spacer()
        }
        .navigationBarTitle(Text("Header Text"), displayMode: .inline)
    }
}

struct player : UIViewControllerRepresentable {
    
    var videoName: String = "Film2"
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<videoPlayer2.player>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let url = Bundle.main.path(forResource: videoName, ofType: "mp4")!
        let player1 = AVPlayer(url: URL(fileURLWithPath: url))
        controller.player = player1
        player1.play()
        controller.showsPlaybackControls = false
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<videoPlayer2.player>) {
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
    }
}
