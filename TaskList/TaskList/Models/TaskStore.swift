//
//  TaskStore.swift
//  TaskList
//
//  Created by Ashwin Raghuraman on 1/13/20.
//  Copyright © 2020 Ashwin Raghuraman. All rights reserved.
//

class TaskStore {
  var tasks = [
    "Code a swift app",
    "Book an escape room",
    "Walk the cat",
    "Pick up heavy things",
    "Make karaoke playlist",
    "Present at iOS Meetup group",
    "Climb El capitan",
    "Learn to make baklava",
    "Play disc golf in every state",
    "100 movie reboot marathon"
    ].map { Task(name: $0) }
}

