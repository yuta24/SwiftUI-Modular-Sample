//
//  Presenting.swift
//  SwiftUI-Modular-Sample
//
//  Created by Yu Tawata on 2019/12/25.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

class Presenting<I>: ObservableObject {
  fileprivate let viewProvider: ViewProvider<I>
  @Published var displaying = false

  init(viewProvider: @escaping ViewProvider<I>) {
    self.viewProvider = viewProvider
  }

  func toggle() {
    displaying.toggle()
  }
}

extension View {
  func sheet<I>(presenting: Presenting<I>, onDismiss: (() -> Void)? = nil, inject: I) -> some View {
    self.sheet(isPresented: Binding<Bool>(get: { presenting.displaying }, set: { presenting.displaying = $0 }), content: { () in
      presenting.viewProvider(inject)
    })
  }

  func sheet(presenting: Presenting<Void>, onDismiss: (() -> Void)? = nil) -> some View {
    self.sheet(isPresented: Binding<Bool>(get: { presenting.displaying }, set: { presenting.displaying = $0 }), content: { () in
      presenting.viewProvider(())
    })
  }
}
