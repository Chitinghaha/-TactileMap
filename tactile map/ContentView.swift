//
//  ContentView.swift
//  tactile map
//
//  Created by Chi Ting on 2023/8/6.
//

import SwiftUI

struct MyRectangle {
    var id = UUID()   // 添加此行來生成一個唯一的識別碼
    var name: String
    var widthRatio: CGFloat
    var heightRatio: CGFloat
    var xPosRatio: CGFloat
    var yPosRatio: CGFloat
    var color: Color
}





struct ContentView: View {
    let rectangles: [MyRectangle] = [
        MyRectangle(name: "辦公室",widthRatio: 0.15,heightRatio: 0.3,
                    xPosRatio: 0,yPosRatio: 0,color: .gray.opacity(0.7)),
        
        MyRectangle(name: "垃圾桶",widthRatio: 0.15,heightRatio: 0.1,
                    xPosRatio: 0,yPosRatio: 0.3,color: .red.opacity(0.7)),
        
        MyRectangle(name: "小七",widthRatio: 0.27,heightRatio: 0.4,
                    xPosRatio: 0.15,yPosRatio: 0,color: .green.opacity(0.7)),
        
        MyRectangle(name: "餐廳六",widthRatio: 0.1,heightRatio: 0.4,
                    xPosRatio: 0.42,yPosRatio: 0,color: .gray.opacity(0.7)),
        
        MyRectangle(name: "餐廳五",widthRatio: 0.095,heightRatio: 0.4,
                    xPosRatio: 0.52,yPosRatio: 0,color: .red.opacity(0.7)),
        
        MyRectangle(name: "餐廳四",widthRatio: 0.095,heightRatio: 0.4,
                    xPosRatio: 0.615,yPosRatio: 0,color: .green.opacity(0.7)),
        
        MyRectangle(name: "餐廳三",widthRatio: 0.095,heightRatio: 0.4,
                    xPosRatio: 0.71,yPosRatio: 0,color: .gray.opacity(0.7)),
        
        MyRectangle(name: "餐廳二",widthRatio: 0.095,heightRatio: 0.4,
                    xPosRatio: 0.805,yPosRatio: 0,color: .red.opacity(0.7)),
        
        MyRectangle(name: "餐廳一",widthRatio: 0.095,heightRatio: 0.4,
                    xPosRatio: 0.9,yPosRatio: 0,color: .green.opacity(0.7)),
        
        MyRectangle(name: "走道",widthRatio: 0.9,heightRatio: 0.15,
                    xPosRatio: 0.05,yPosRatio: 0.4,color: .gray.opacity(0.7)),
        
        MyRectangle(name: "男廁",widthRatio: 0.07,heightRatio: 0.18,
                    xPosRatio: 0,yPosRatio: 0.55,color: .red.opacity(0.7)),
        
        MyRectangle(name: "女廁",widthRatio: 0.07,heightRatio: 0.18,
                    xPosRatio: 0.07,yPosRatio:0.55,color: .green.opacity(0.7)),
        
        
        MyRectangle(name: "麥當勞",widthRatio: 0.19,heightRatio: 0.37,
                    xPosRatio: 0.14,yPosRatio: 0.55,color: .gray.opacity(0.7)),
        
        MyRectangle(name: "無障礙廁所",widthRatio: 0.05,heightRatio: 0.22,
                    xPosRatio: 0.33,yPosRatio: 0.55,color: .red.opacity(0.7)),
        
        MyRectangle(name: "用餐區",widthRatio: 0.57,heightRatio: 0.22,
                    xPosRatio: 0.38,yPosRatio:0.55,color: .green.opacity(0.7)),
        
        MyRectangle(name: "辦公室",widthRatio: 0.05,heightRatio: 0.22,
                    xPosRatio: 0.95,yPosRatio: 0.55,color: .gray.opacity(0.7)),
        
        MyRectangle(name: "走道",widthRatio: 0.14,heightRatio: 0.2,
                    xPosRatio: 0,yPosRatio: 0.73,color: .red.opacity(0.7)),
        
        MyRectangle(name: "走道",widthRatio: 0.67,heightRatio: 0.06,
                    xPosRatio: 0.33,yPosRatio:0.77,color: .green.opacity(0.7)),
        
        MyRectangle(name: "餐廳七",widthRatio: 0.12,heightRatio: 0.25,
                    xPosRatio: 0.54,yPosRatio: 0.83,color: .cyan.opacity(0.7)),
        
        MyRectangle(name: "走道",widthRatio: 0.09,heightRatio: 0.05,
                    xPosRatio: 0.33,yPosRatio: 0.83,color: .green.opacity(0.7)),
        
        MyRectangle(name: "餐廳八",widthRatio: 0.12,heightRatio: 0.25,
                    xPosRatio: 0.42,yPosRatio:0.83,color: .blue.opacity(0.7)),
        
        MyRectangle(name: "用餐區",widthRatio: 0.24,heightRatio: 0.25,
                    xPosRatio: 0.66,yPosRatio: 0.83,color: .brown.opacity(0.7)),
        
        MyRectangle(name: "機房",widthRatio: 0.1,heightRatio: 0.25,
                    xPosRatio: 0.9,yPosRatio:0.83,color: .pink.opacity(0.7)),
        
        
        
        
//
    ]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("map 2")
                    .resizable()
                
               

                
                ForEach(rectangles, id: \.id) { rectangle in
                    
                    Rectangle()

                        .fill(rectangle.color)
                        .frame(
                            width: geometry.size.width * rectangle.widthRatio,
                            height: geometry.size.height * rectangle.heightRatio
                        )
                        .offset(
                            x: -geometry.size.width * 0.5 + geometry.size.width * rectangle.xPosRatio + geometry.size.width * rectangle.widthRatio * 0.5,
                            y: -geometry.size.height * 0.5 + geometry.size.height * rectangle.yPosRatio + geometry.size.height * rectangle.heightRatio * 0.5
                        )
                }

            }
        }
        //        VStack(spacing: 0){
        //            HStack(spacing: 0){
        //                VStack(spacing: 0){
        //
        //                    CustomButton(text: "辦公室", width: geometry.size.width * 0.15, height: geometry.size.height * 0.25, color: Color.gray.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                    CustomButton(text: "垃圾桶", width: geometry.size.width * 0.15, height: geometry.size.height * 0.15, color: Color.blue.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //                }
        //
        //                CustomButton(text: "小七", width: geometry.size.width * 0.272, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                CustomButton(text: "餐廳1", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                CustomButton(text: "餐廳2", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                CustomButton(text: "餐廳3", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                CustomButton(text: "餐廳4", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //                CustomButton(text: "餐廳5", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //                CustomButton(text: "餐廳6", width: geometry.size.width * 0.095, height: geometry.size.height * 0.4, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //            }
        //            HStack(spacing: 0){
        //
        //                CustomButton(text: "入口1", width: geometry.size.width * 0.03, height: geometry.size.height * 0.15, color: Color.red.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                CustomButton(text: "走道", width: geometry.size.width*0.97, height: geometry.size.height * 0.15, color: Color.cyan.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //            }
        //            HStack(spacing: 0){
        //                VStack(spacing: 0){
        //
        //                    HStack(spacing: 0){
        //
        //                        CustomButton(text: "男廁", width: geometry.size.width*0.07, height: geometry.size.height * 0.19, color: Color.purple.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                        CustomButton(text: "女廁", width: geometry.size.width*0.07, height: geometry.size.height * 0.19, color: Color.purple.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //
        //
        //                    }
        //                    CustomButton(text: "無障礙廁所", width: geometry.size.width*0.15, height: geometry.size.height * 0.2, color: Color.purple.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //                }
        //
        //                CustomButton(text: "麥當勞", width: geometry.size.width*0.18, height: geometry.size.height * 0.39, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                VStack(spacing: 0) {
        //
        //                    CustomButton(text: "走道", width: geometry.size.width*0.1, height: geometry.size.height * 0.3, color: Color.cyan.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                    CustomButton(text: "入口3", width: geometry.size.width*0.1, height: geometry.size.height * 0.09, color: Color.red.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                }
        //
        //
        //
        //
        //                VStack(spacing: 0){
        //                    HStack(spacing: 0){
        //
        //
        //                        CustomButton(text: "用餐區", width: geometry.size.width*0.52, height: geometry.size.height * 0.21, color: Color.yellow.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                        CustomButton(text: "入口 2", width: geometry.size.width*0.05, height: geometry.size.height * 0.21, color: Color.red.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //                    }
        //
        //                    HStack(spacing: 0){
        //
        //                        CustomButton(text: "走道", width: geometry.size.width*0.57, height: geometry.size.height * 0.05, color: Color.cyan.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //                    }
        //
        //                    HStack(spacing: 0) {
        //                        CustomButton(text: "餐廳7", width: geometry.size.width*0.11, height: geometry.size.height * 0.13, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                        CustomButton(text: "餐廳8", width: geometry.size.width*0.11, height: geometry.size.height * 0.13, color: Color.green.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                        CustomButton(text: "用餐區", width: geometry.size.width*0.25, height: geometry.size.height * 0.13, color: Color.yellow.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                        CustomButton(text: "機房", width: geometry.size.width*0.1, height: geometry.size.height * 0.13, color: Color.gray.opacity(0.5),speechSynthesizer:speechSynthesizer)
        //
        //                    }
        //
        //                }
        //
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeLeft)
        
        ContentView().previewDevice(.iPhoneSE).previewInterfaceOrientation(.landscapeLeft)
    }
}
