//
//  Homescreen.swift
//  tactile map
//
//  Created by Chi Ting on 2023/8/7.
//

import SwiftUI

struct Homescreen: View {
    var body: some View {
        TabView {
            TouchView()
                .tabItem {
                    Label("Touch", systemImage: "hand.tap")
                }

            Gridmap()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen().previewInterfaceOrientation(.landscapeLeft)
        
        Homescreen() .previewDevice(.iPhoneSE).previewInterfaceOrientation(.landscapeLeft)
    }
}
