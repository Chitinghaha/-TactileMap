//
//  Location.swift
//  tactile map
//
//  Created by Chi Ting on 2023/8/7.
//

import Foundation

import UIKit

// 定義區域結構
struct Area {
    let name: String
    let bounds: CGRect
}


let referenceSize: CGFloat = 1000.0

let areas: [Area] = [
    Area(name: "辦公室", bounds: CGRect(x: 0, y: 0, width: 0.15, height: 0.3)),
    Area(name: "垃圾回收區", bounds: CGRect(x: 0, y: 0.3, width: 0.15, height: 0.1)),
    Area(name: "小七", bounds: CGRect(x: 0.15, y: 0, width: 0.27, height: 0.4)),
    Area(name: "餐廳六", bounds: CGRect(x: 0.42, y: 0, width: 0.1, height: 0.4)),
    Area(name: "餐廳五", bounds: CGRect(x: 0.52, y: 0, width: 0.095, height: 0.4)),
    Area(name: "餐廳四", bounds: CGRect(x: 0.615, y: 0, width: 0.095, height: 0.4)),
    Area(name: "餐廳三", bounds: CGRect(x: 0.71, y: 0, width: 0.095, height: 0.4)),
    Area(name: "餐廳二", bounds: CGRect(x: 0.805, y: 0, width: 0.095, height: 0.4)),
    Area(name: "餐廳一", bounds: CGRect(x: 0.9, y: 0, width: 0.095, height: 0.4)),
    
    Area(name: "入口一", bounds: CGRect(x: 0, y: 0.4, width: 0.05, height: 0.15)),
    
    Area(name: "走道", bounds: CGRect(x: 0.05, y: 0.4, width: 0.9, height: 0.15)),
    
    Area(name: "入口二", bounds: CGRect(x: 0.95 , y: 0.4, width: 0.05, height: 0.15)),
    
    Area(name: "男廁", bounds: CGRect(x: 0, y: 0.55, width: 0.07, height: 0.18)),
    Area(name: "女廁", bounds: CGRect(x: 0.07, y: 0.55, width: 0.07, height: 0.18)),
    Area(name: "麥當勞", bounds: CGRect(x: 0.14, y: 0.55, width: 0.19, height: 0.37)),
    
    Area(name: "走道", bounds: CGRect(x: 0.33, y: 0.55, width: 0.05, height: 0.22)),
    
    Area(name: "用餐區", bounds: CGRect(x: 0.38, y: 0.55, width: 0.57, height: 0.22)),
    
    Area(name: "走道", bounds: CGRect(x: 0.95, y: 0.55, width: 0.05, height: 0.22)),
    
    Area(name: "無障礙廁所", bounds: CGRect(x: 0, y: 0.73, width: 0.14, height: 0.2)),
    
    Area(name: "走道", bounds: CGRect(x: 0.33, y: 0.77, width: 0.67, height: 0.06)),
    Area(name: "餐廳七", bounds: CGRect(x: 0.54, y: 0.83, width: 0.12, height: 0.25)),
    
    Area(name: "走道", bounds: CGRect(x: 0.33, y: 0.83, width: 0.09, height: 0.05)),
    
    Area(name: "入口三", bounds: CGRect(x: 0.33, y: 0.88, width: 0.09, height: 0.05)),
    
    
    Area(name: "餐廳八", bounds: CGRect(x: 0.42, y: 0.83, width: 0.12, height: 0.25)),
    Area(name: "用餐區", bounds: CGRect(x: 0.66, y: 0.83, width: 0.24, height: 0.25)),
    Area(name: "機房", bounds: CGRect(x: 0.9, y: 0.83, width: 0.1, height: 0.25))
]




// 將觸摸的點的像素值轉換為視圖寬度和高度的比例，然後再使用這些比例來確定區域
func region(at point: CGPoint, in viewSize: CGSize) -> String {
    let pointInRatio = CGPoint(x: point.x / viewSize.width, y: point.y / viewSize.height)
    for area in areas {
        if area.bounds.contains(pointInRatio) {
            return area.name
        }
    }
    return "未知區域"
}
