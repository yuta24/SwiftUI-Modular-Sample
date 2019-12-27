//
//  ToDoView.swift
//  ToDo
//
//  Created by Yu Tawata on 2019/12/27.
//  Copyright © 2019 Yu Tawata. All rights reserved.
//

import SwiftUI

public struct ToDoView: View {
    let contents: [(id: UUID, title: String)] = [
    (UUID(), "ABC"),
    (UUID(), "DEF"),
    (UUID(), "GHI"),
  ]

  public var body: some View {
    NavigationView {
      List(contents, id: \.id) {
        Text($0.title)
      }
      .navigationBarTitle("ToDo")
    }
  }

  public init() {
  }
}

struct ToDoView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoView()
  }
}
