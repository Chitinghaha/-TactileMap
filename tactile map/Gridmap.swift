//
//  Gridmap.swift
//  tactile map
//
//  Created by Chi Ting on 2023/8/6.
//

import SwiftUI
import AVFoundation

struct Gridmap: View {
    
    let speechSynthesizer = AVSpeechSynthesizer() // 这是一个强引用
    var body: some View {
        
        @Environment(\.sizeCategory) var sizeCategory
        @Environment(\.colorScheme) var colorScheme
        GeometryReader { geometry in
            
            Image("map 2")
                .resizable()
            
            VStack(spacing: 0){
                HStack(spacing: 0){
                    VStack(spacing: 0){
                        
                        CustomButton(text: "辦公室", width: geometry.size.width * 0.15, height: geometry.size.height * 0.25, color: Color.gray.opacity(0.5),speechSynthesizer:speechSynthesizer)
                        
                        CustomButton(text: "垃圾桶", width: geometry.size.width * 0.15, height: geometry.size.height * 0.15, color: Color.blue.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    }
                    
                    CustomButton(text: "小七", width: geometry.size.width * 0.272, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                    CustomButton(text: "餐廳1", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                    CustomButton(text: "餐廳2", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                    CustomButton(text: "餐廳3", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                    CustomButton(text: "餐廳4", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    CustomButton(text: "餐廳5", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    CustomButton(text: "餐廳6", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                }
                HStack(spacing: 0){
                    
                    CustomButton(text: "入口一", width: geometry.size.width * 0.03, height: geometry.size.height * 0.15, color: Color.red.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                    CustomButton(text: "走道", width: geometry.size.width*0.97, height: geometry.size.height * 0.15, color: Color.cyan.opacity(0.5),speechSynthesizer:speechSynthesizer)
                }
                HStack(spacing: 0){
                    VStack(spacing: 0){
                        
                        HStack(spacing: 0){
                            
                            CustomButton(text: "男廁", width: geometry.size.width*0.07, height: geometry.size.height * 0.19, color: Color.purple.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                            CustomButton(text: "女廁", width: geometry.size.width*0.07, height: geometry.size.height * 0.19, color: Color.purple.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                            
                            
                        }
                        CustomButton(text: "無障礙廁所", width: geometry.size.width*0.15, height: geometry.size.height * 0.22, color: Color.purple.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    }
                    
                    CustomButton(text: "麥當勞", width: geometry.size.width*0.18, height: geometry.size.height * 0.41, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                    
                    VStack(spacing: 0) {
                        
                        CustomButton(text: "走道", width: geometry.size.width*0.1, height: geometry.size.height * 0.3, color: Color.cyan.opacity(0.5),speechSynthesizer:speechSynthesizer)
                        
                        CustomButton(text: "入口三", width: geometry.size.width*0.1, height: geometry.size.height * 0.11, color: Color.red.opacity(0.5),speechSynthesizer:speechSynthesizer)
                        
                    }
                    
                    
                    
                    
                    VStack(spacing: 0){
                        HStack(spacing: 0){
                            
                            
                            CustomButton(text: "用餐區", width: geometry.size.width*0.52, height: geometry.size.height * 0.21, color: Color.yellow.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                            CustomButton(text: "入口二", width: geometry.size.width*0.05, height: geometry.size.height * 0.21, color: Color.red.opacity(0.5),speechSynthesizer:speechSynthesizer)
                        }
                        
                        HStack(spacing: 0){
                            
                            CustomButton(text: "走道", width: geometry.size.width*0.57, height: geometry.size.height * 0.05, color: Color.cyan.opacity(0.5),speechSynthesizer:speechSynthesizer)
                        }
                        
                        HStack(spacing: 0) {
                            CustomButton(text: "餐廳7", width: geometry.size.width*0.11, height: geometry.size.height * 0.15, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                            CustomButton(text: "餐廳8", width: geometry.size.width*0.11, height: geometry.size.height * 0.15, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                            CustomButton(text: "用餐區", width: geometry.size.width*0.25, height: geometry.size.height * 0.15, color: Color.yellow.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                            CustomButton(text: "機房", width: geometry.size.width*0.1, height: geometry.size.height * 0.15, color: Color.gray.opacity(0.5),speechSynthesizer:speechSynthesizer)
                            
                        }
                        
                    }
                    
                    
                }
                
            }
            
            
            
        }
        
        
    }
}


struct CustomButton: View {
    var text: String
    var width: CGFloat
    var height: CGFloat
    var color: Color
    var speechSynthesizer: AVSpeechSynthesizer // 添加这一行
    
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button(action: {
            // 在开始新的语音合成之前，停止当前的语音合成
            if speechSynthesizer.isSpeaking {
                speechSynthesizer.stopSpeaking(at: .immediate)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    let utterance = AVSpeechUtterance(string: text)
                    utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                    speechSynthesizer.speak(utterance)
                }
            } else {
                let utterance = AVSpeechUtterance(string: text)
                utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
                speechSynthesizer.speak(utterance)
            }


                    print("Is speaking: \(speechSynthesizer.isSpeaking)") // Add this line
            
        }) {
            Text(text)
                .font(.system(size: sizeCategory.isAccessibilityCategory ? 24 : 16))
                .frame(width: width, height: height)
                .background(colorScheme == .dark ? Color.white : color)
                .foregroundColor(colorScheme == .dark ? Color.black : .white)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .accessibilityLabel(Text("這是" + text))
        .accessibilityHint(Text("點擊以獲取更多信息"))
    }
}

struct Gridmap_Previews: PreviewProvider {
    static var previews: some View {
        Gridmap().previewInterfaceOrientation(.landscapeLeft)
        
        Gridmap().previewDevice(.iPhoneSE).previewInterfaceOrientation(.landscapeLeft)
    }
}
