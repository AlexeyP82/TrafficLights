//
//  ColorButton.swift
//  TrafficLights
//
//  Created by Алексей Подлевский on 22.07.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import SwiftUI

struct ColorButton: View {
  let buttonText: String
  let action: () -> ()
  
  var body: some View {
    Button(action: action) {
      Text(buttonText)
        .font(.title)
        .foregroundColor(.white)
    }
    .padding()
    .frame(width: 200, height: 40)
    .background(Color.blue)
    .cornerRadius(10)
    .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(Color.white, lineWidth: 4))
  }
}

struct ColorButton_Previews: PreviewProvider {
  static var previews: some View {
    ColorButton(buttonText: "Start", action: {})
  }
}
