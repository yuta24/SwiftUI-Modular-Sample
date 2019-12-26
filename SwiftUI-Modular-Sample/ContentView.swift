//
//  ContentView.swift
//  SwiftUI-Modular-Sample
//
//  Created by Yu Tawata on 2019/12/25.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var presenting: Presenting

  var body: some View {
    Button("Display!!") {
      self.presenting.toggle()
    }
    .sheet(presenting: presenting)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(
        presenting: Presenting(viewProvider: { AnyView(Text("Hello World!!")) })
    )
  }
}
