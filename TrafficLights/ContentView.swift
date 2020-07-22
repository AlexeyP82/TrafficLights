//
//  ContentView.swift
//  TrafficLights
//
//  Created by Алексей Подлевский on 21.07.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import SwiftUI

enum CurrentLight {
  case red, yellow, green, allOff
}

struct ContentView: View {
  @State private var buttonText = "Start"
  @State private var currentLight = CurrentLight.allOff
  
  var body: some View {
    ZStack {
      Color(.black)
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        ColorCircle(color: .red, alpha: currentLight == .red ? 1.0 : 0.3)
        
        ColorCircle(color: .yellow, alpha: currentLight == .yellow ? 1.0 : 0.3)
        
        ColorCircle(color: .green, alpha: currentLight == .green ? 1.0 : 0.3)
        
        Spacer()
        
        ColorButton(buttonText: buttonText, action: changeLight)
      }
      .padding()
    }
  }
  
  private func changeLight() {
    buttonText = "Next"
    
    switch currentLight {
    case .red: currentLight = .yellow
    case .yellow: currentLight = .green
    case .green: currentLight = .red
    case .allOff: currentLight = .red
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
