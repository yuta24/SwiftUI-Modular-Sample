//
//  Presenting.swift
//  SwiftUI-Modular-Sample
//
//  Created by Yu Tawata on 2019/12/25.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

class Presenting: ObservableObject {
  let view: AnyView
  @Published var displaying = false

  init(view: AnyView) {
    self.view = view
  }

  func toggle() {
    displaying.toggle()
  }
}
