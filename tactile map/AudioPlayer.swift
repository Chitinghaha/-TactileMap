//
//  AudioPlayer.swift
//  tactile map
//
//  Created by Chi Ting on 2023/8/7.
//

import AVFoundation
import UIKit

class AudioPlayer: ObservableObject {
    private var audioPlayer: AVAudioPlayer?

    func playSound(name: String) {
        guard let audioData = NSDataAsset(name: name)?.data else {
            print("Error: sound file with name \(name) not found")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(data: audioData)
            audioPlayer?.play()
            print("Audio file found. Playing the sound.")
        } catch {
            print("Error in AVAudioPlayer: \(error.localizedDescription)")
        }
    }
    
    init() {
           do {
               try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.mixWithOthers])
               try AVAudioSession.sharedInstance().setActive(true)
           } catch {
               print("Failed to set audio session category: \(error)")
           }
       }

    func stopSound() {
        audioPlayer?.stop()
        print("Audio player stopped.")
    }
    
    
    func playLoopSound(name: String) {
        audioPlayer?.stop()
        
        guard let audioData = NSDataAsset(name: name)?.data else {
            print("Error: sound file with name \(name) not found")
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(data: audioData)
            audioPlayer?.numberOfLoops = -1  // Loop indefinitely
            audioPlayer?.play()
            print("Audio file found. Playing the sound.")
        } catch {
            print("Error in AVAudioPlayer: \(error)")
        }
    }
  







}


