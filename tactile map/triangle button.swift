//
//  triangle button.swift
//  tactile map
//
//  Created by Chi Ting on 2023/8/6.
//

import SwiftUI




// 自定義形狀：正方形且右上角被切除一小部分
struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: rect.size.height)) // 左下角
        path.addLine(to: CGPoint(x: 0, y: 0)) // 左上角
        path.addLine(to: CGPoint(x: rect.size.width / 2, y: 0)) // 中上
        path.addLine(to: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2)) // 中間
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height / 2)) // 右中
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height)) // 右下角
        
        
        
        
        return path
    }
}

struct CustomShape2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.width, y: rect.height)) //右下角
        path.addLine(to: CGPoint(x: rect.width/2, y: rect.height)) // 中下
        path.addLine(to: CGPoint(x: rect.width/2, y: rect.height/2)) // 中間
        path.addLine(to: CGPoint(x: 0, y: rect.height/2)) // 左中
        path.addLine(to: CGPoint(x: 0, y: 0)) // 左上角
        path.addLine(to: CGPoint(x: rect.width, y: 0)) // 右上角
        
        return path
    }
}

struct triangle_button: View {
    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            CustomShape()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
    }
}

struct triangle_button_Previews : PreviewProvider {
    static var previews: some View {
        triangle_button()
    }
}
