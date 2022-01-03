//
//  AudioPlayer.swift
//  Restart
//
//  Created by Andrew Irvine on 12/21/21.
// AVFoundation is a full-featured framework for working with time-based audiovisual media on IOS
// We can easily play, create, and edit movies, sound files and build powerful media functionality into any apps using this framework

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file")
        }
    }
}
