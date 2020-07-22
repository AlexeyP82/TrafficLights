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
  let alpha: Double
  
  var body: some View {
    Color(color)
    .frame(width: 100, height: 100)
    .clipShape(Circle())
    .opacity(alpha)
    .overlay(Circle().stroke(Color.white, lineWidth: 4))
  }
}

struct ColorCircle_Previews: PreviewProvider {
  static var previews: some View {
    ColorCircle(color: .red, alpha: 1.0)
  }
}
