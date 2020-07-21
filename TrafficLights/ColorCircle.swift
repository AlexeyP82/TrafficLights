//
//  ColorCircle.swift
//  TrafficLights
//
//  Created by Алексей Подлевский on 21.07.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
  let color: UIColor
  
  var body: some View {
    ZStack {
//      Color(.white)
//        .frame(width: 100, height: 100)
//        .clipShape(Circle())
//        .overlay(Circle().stroke(Color.white, lineWidth: 4))
      
      Color(color)
        .frame(width: 100, height: 100)
        .clipShape(Circle())
//        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 8)
    }
  }
}

struct ColorCircle_Previews: PreviewProvider {
  static var previews: some View {
    ColorCircle(color: .red)
  }
}
