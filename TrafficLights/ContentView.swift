//
//  ContentView.swift
//  TrafficLights
//
//  Created by Алексей Подлевский on 21.07.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import SwiftUI

enum CurrentLight {
  case red, yellow, green
}

struct ContentView: View {
  @State private var buttonText = "Start"
  @State private var redLight = 0.3
  @State private var yellowLight = 0.3
  @State private var greenLight = 0.3
  @State private var currentLight = CurrentLight.green
  
  var body: some View {
    ZStack {
      Color(.black)
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        ColorCircle(color: .red, alpha: redLight)
        
        ColorCircle(color: .yellow, alpha: yellowLight)
        
        ColorCircle(color: .green, alpha: greenLight)
        
        Spacer()
        
        Button(action: { self.changeLight() }) {
          Text(buttonText)
            .font(.title)
        }
        .frame(width: 200, height: 40)
        .foregroundColor(.white)
        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(Color.white, lineWidth: 4))
      }
      .padding()
    }
  }
  
  private func changeLight() {
    buttonText = "Next"
    
    switch currentLight {
    case .red:
      redLight = 0.3
      yellowLight = 1.0
      currentLight = .yellow
    case .yellow:
      yellowLight = 0.3
      greenLight = 1.0
      currentLight = .green
    case .green:
      greenLight = 0.3
      redLight = 1.0
      currentLight = .red
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
