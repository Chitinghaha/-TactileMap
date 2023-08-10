import SwiftUI
import AVFoundation
import AVKit

class SpeechSynthesizer: ObservableObject {
    let synthesizer = AVSpeechSynthesizer()
    
    init() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [.duckOthers])
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Failed to set audio session category: \(error)")
        }
    }
    
    func speak(_ string: String) {
        let utterance = AVSpeechUtterance(string: string)
        synthesizer.speak(utterance)
    }
}

struct TouchView: View {
    @StateObject private var audioPlayer = AudioPlayer()
    @StateObject private var speechSynthesizer = SpeechSynthesizer()
    @State private var isPlaying = false
    @State private var isStarted = false
    @State private var currentSound: String? = nil
    @State private var currentRegion: String? = nil
    @State private var lastSpokenRegion: String? = nil
    
    
    
    var body: some View {
        ZStack {
            Image("map 2")
                .resizable()
            
            GeometryReader { geometry in
                HStack(spacing: 0){
                    Button {
                        isStarted = true
                        audioPlayer.playSound(name: "start")
                    } label: {
                        Text("入口一")
                            .bold()
                            .font(.largeTitle)
                            .frame(width:geometry.size.width/40, height: geometry.size.height/7)
                            .cornerRadius(10)
                            .minimumScaleFactor(0.3)
                    }
                    .foregroundColor(.white.opacity(0.5))
                    .cornerRadius(10)
                    .buttonStyle(.borderedProminent)
                    .position( x:geometry.size.width/40 ,y: geometry.size.height / 2.2 )
                    
                    Spacer()
                    
                    Button {
                        isStarted = true
                        audioPlayer.playSound(name: "start")
                    } label: {
                        Text("入口二")
                            .bold()
                            .font(.largeTitle)
                            .frame(width:geometry.size.width/40, height: geometry.size.height/7)
                            .cornerRadius(10)
                            .minimumScaleFactor(0.3)
                    }
                    .foregroundColor(.white.opacity(0.5))
                    .cornerRadius(10)
                    .buttonStyle(.borderedProminent)
                }
                
                Button {
                    isStarted = true
                    audioPlayer.playSound(name: "start")
                } label: {
                    Text("入口三")
                        .bold()
                        .font(.largeTitle)
                        .frame(width:geometry.size.width/20, height: geometry.size.height/10)
                        .cornerRadius(10)
                        .minimumScaleFactor(0.4)
                }
                .foregroundColor(.white.opacity(0.5))
                .cornerRadius(10)
                .buttonStyle(.borderedProminent)
                .position( x:geometry.size.width/2.7 ,y:geometry.size.height * 0.9 )
                
                if isStarted {
                    Rectangle()
                        .fill(Color.clear)
                        .contentShape(Rectangle())
                        .simultaneousGesture(
                                           TapGesture(count: 2)
                                               .onEnded { _ in
                                                   reset()
                                               }
                                       )
                        .gesture(
                            DragGesture(minimumDistance: 0)
                                .onChanged { value in
                                    let touchLocation = value.location
                                    let region = region(at: touchLocation, in: geometry.size)
                                    if currentRegion != region {
                                        currentRegion = region
                                        switch region {
                                        case "走道":
                                            if currentSound != "beep2" {
                                                audioPlayer.playLoopSound(name: "beep2")
                                                currentSound = "beep2"
                                                speechSynthesizer.synthesizer.stopSpeaking(at: .immediate)
                                            }
                                        default:
                                            if currentSound != "beep" || lastSpokenRegion != region {
                                                audioPlayer.stopSound()
                                                currentSound = "beep"
                                                let utterance = AVSpeechUtterance(string: "您已進入\(region)")
                                                utterance.volume = 1.0
                                                utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                                                speechSynthesizer.synthesizer.speak(utterance)
                                                lastSpokenRegion = region
                                            }
                                        }
                                    }
                                }
                                .onEnded { _ in
                                    print("Touch ended")
                                    currentSound = nil
                                    currentRegion = nil
                                    lastSpokenRegion = nil
                                    audioPlayer.stopSound()
                                    speechSynthesizer.synthesizer.stopSpeaking(at: .immediate)
                                }
                            
                            
                        )
                    
                
                }
            }
        }
    }
    
    private func reset() {
           isStarted = false
           audioPlayer.stopSound()
           speechSynthesizer.synthesizer.stopSpeaking(at: .immediate)
           // Clear all the state variables if needed
       }
    
    // TODO: Implement your region function
}

struct TouchView_Previews: PreviewProvider {
    static var previews: some View {
        TouchView().previewInterfaceOrientation(.landscapeLeft)
        
        TouchView().previewDevice(.iPhoneSE).previewInterfaceOrientation(.landscapeLeft)
    }
}
