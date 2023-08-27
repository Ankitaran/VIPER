//
//  TaskViewController.swift
//  VIPER
//
//  Created by Ankita Thakur on 26/08/23.
//

import Foundation
import UIKit

protocol TaskView: AnyObject {
    func refreshTasks()
}

class TaskViewController: UIViewController, TaskView {
    var presenter: TaskPresenter?
    
    @IBOutlet weak var tableView: UITableView!

    // Implement UITableViewDataSource methods to populate the table view.
    
    @IBAction func addButtonTapped() {
        // Handle user tapping the "Add Task" button.
        // Call presenter to add a task.
    }

    // Implement UITableViewDelegate methods for handling user interactions.
    
    func refreshTasks() {
        // Reload the table view to reflect changes in tasks.
    }
}
extension TaskViewController : UITableViewDelegate, UITableViewDataSource {
    // here we will implementing the task list
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.interactor.tasks.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath)
        
        // Configure the cell with the data from your tasks array
        let task = presenter?.interactor.tasks[indexPath.row]
        cell.textLabel?.text = task?.title
        cell.detailTextLabel?.text = task?.description
        
        // You can also customize the cell further here
        
        return cell
        
    }
    
    
    
}
