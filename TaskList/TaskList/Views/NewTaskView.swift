//
//  NewTaskView.swift
//  TaskList
//
//  Created by Ashwin Raghuraman on 1/14/20.
//  Copyright © 2020 Ashwin Raghuraman. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {

  @Environment(\.presentationMode) var presentationMode
  
  var taskStore: TaskStore
  @State var text = ""
  
  var body: some View {
    
    Form {
      TextField("Task Name", text: $text)
      
      Button(
        action: {
          self.taskStore.tasks.append(Task(name: self.text))
//          self.presentationMode.wrappedValue.dismiss()
      }
      ) {
        Text("Add")
      }
      .disabled(text.isEmpty)
    }
  }
}

struct NewTaskView_Previews: PreviewProvider {
  static var previews: some View {
    NewTaskView(taskStore: TaskStore())
  }
}
