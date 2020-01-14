//
//  ContentView.swift
//  TaskList
//
//  Created by Ashwin Raghuraman on 1/13/20.
//  Copyright © 2020 Ashwin Raghuraman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var taskStore: TaskStore
  
  var body: some View {
  
    List(taskStore.tasks) { task in
      Text(task.name)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(taskStore: TaskStore() )
  }
}
