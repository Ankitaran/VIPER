//
//  TaskPresenter.swift
//  VIPER
//
//  Created by Ankita Thakur on 26/08/23.
//

import Foundation

class TaskPresenter {
    weak var view: TaskView?
    var interactor: TaskInteractor

    init(view: TaskView, interactor: TaskInteractor) {
        self.view = view
        self.interactor = interactor
    }

    func addTask(title: String, description: String) {
        let newTask = Task(title: title, description: description, isCompleted: false)
        interactor.addTask(task: newTask)
        view?.refreshTasks()
    }

    func removeTask(at index: Int) {
        interactor.removeTask(at: index)
        view?.refreshTasks()
    }
}
