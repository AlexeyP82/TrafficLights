//
//  ContentView.swift
//  TrafficLights
//
//  Created by Алексей Подлевский on 21.07.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var buttonText = "Start"
  @State private var redLight = 0.3
  @State private var yellowLight = 0.3
  @State private var greenLight = 0.3
  
  private func changeLight() {
    
    if redLight == 1.0 {
      redLight = 0.3
      yellowLight = 1.0
    } else if yellowLight == 1.0 {
      yellowLight = 0.3
      greenLight = 1.0
    } else if greenLight == 1.0 {
      greenLight = 0.3
      redLight = 1.0
    } else {
      buttonText = "Next"
      redLight = 1.0
    }
    
  }
  
  var body: some View {
    ZStack {
      Color(.black)
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        VStack {
          ColorCircle(color: .red)
            .opacity(redLight)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
          
          ColorCircle(color: .yellow)
            .opacity(yellowLight)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
          
          ColorCircle(color: .green)
            .opacity(greenLight)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
        
        Spacer()
        
        ZStack {
          RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.blue)
            .frame(width: 200, height: 40)
          
          Button(action: { self.changeLight() }) {
            Text(buttonText)
              .font(.title)
          }
          .frame(width: 200, height: 40)
          .foregroundColor(.white)
          .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
        }
      }
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
