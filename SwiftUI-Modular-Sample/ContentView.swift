//
//  ContentView.swift
//  SwiftUI-Modular-Sample
//
//  Created by Yu Tawata on 2019/12/25.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var counterPresenting: Presenting<Int>
  @ObservedObject var todoPresenting: Presenting<Void>

  var body: some View {
    VStack(spacing: 32) {
        Button("Display Counter!!") {
            self.counterPresenting.toggle()
        }
        .sheet(presenting: counterPresenting, inject: 10)
        Button("Display ToDo!!") {
            self.todoPresenting.toggle()
        }
        .sheet(presenting: todoPresenting)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(
      counterPresenting: Presenting<Int>(viewProvider: { _ in AnyView(Text("Hello World!!")) }),
      todoPresenting: Presenting<Void>(viewProvider: { _ in AnyView(Text("Hello World!!")) })
    )
  }
}
