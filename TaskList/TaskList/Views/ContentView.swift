//
//  ContentView.swift
//  TaskList
//
//  Created by Ashwin Raghuraman on 1/13/20.
//  Copyright © 2020 Ashwin Raghuraman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var taskStore: TaskStore
  @State var isModalPresented = false
  
  var body: some View {
    NavigationView {
      List {
        ForEach(taskStore.tasks) { task in
          Text(task.name)
        }
        .onMove { sourceIndices, destinationIndex in
          self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
        }
        .onDelete { indexSet in
          self.taskStore.tasks.remove(atOffsets: indexSet)
        }
      }
      .navigationBarTitle("Tasks")
      .navigationBarItems(
        leading: EditButton(),
        trailing:
        Button(
          action: {
            self.isModalPresented = true }
        ) {
          Image(systemName: "plus")
        }
      )
    }
    .sheet(isPresented: $isModalPresented) {
      NewTaskView(taskStore: self.taskStore)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(taskStore: TaskStore() )
  }
}
