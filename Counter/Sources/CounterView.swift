//
//  CounterView.swift
//  Counter
//
//  Created by Yu Tawata on 2019/12/25.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

public struct CounterView: View {
  @State var count = 0

  public var body: some View {
    HStack(spacing: 8) {
      Button("-") {
        self.count -= 1
      }
      Text("\(self.count)")
      Button("+") {
        self.count += 1
      }
    }
  }

  public init(initialCount: Int) {
    self._count = State(initialValue: initialCount)
  }
}

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    CounterView(initialCount: 0)
  }
}
