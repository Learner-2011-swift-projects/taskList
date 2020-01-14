//
//  Task.swift
//  TaskList
//
//  Created by Ashwin Raghuraman on 1/13/20.
//  Copyright © 2020 Ashwin Raghuraman. All rights reserved.
//

import Foundation

struct Task: Identifiable {
  let id = UUID()
  var name: String
  var completed = false
}
