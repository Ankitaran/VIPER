//
//  TaskInteractor.swift
//  VIPER
//
//  Created by Ankita Thakur on 26/08/23.
//

import Foundation

class TaskInteractor {
    var tasks: [Task] = []

    func addTask(task: Task) {
        tasks.append(task)
    }

    func removeTask(at index: Int) {
        tasks.remove(at: index)
    }
}
