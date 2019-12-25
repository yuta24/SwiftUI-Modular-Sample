//
//  View+Extension.swift
//  SwiftUI-Modular-Sample
//
//  Created by Yu Tawata on 2019/12/26.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

extension View {
  func sheet(presenting: Presenting, onDismiss: (() -> Void)? = nil) -> some View {
    self.sheet(isPresented: Binding<Bool>(get: { presenting.displaying }, set: { presenting.displaying = $0 }), content: { () in
      presenting.view
    })
  }
}
