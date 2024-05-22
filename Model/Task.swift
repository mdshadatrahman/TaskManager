//
//  Task.swift
//  TaskManager
//
//  Created by HelloTask on 22/5/24.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example () -> Task {
        Task(title: "Buy Milk", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "Here's to the crazy ones"),
            Task(title: "The misfits, the rebels, the troublemakers", isCompleted: true),
            Task(title: "The round pegs in th esquare holes...", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "The ones who see things differently - they're not fond of rules..."),
            Task(title: "You can quote them, disagree with them, glorify or vilify them."),
            Task(title: "They push the human race forward.", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
            Task(title: "And while some may see them as the crazy ones"),
            Task(title: "We see genius", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
            Task(title: "Because the ones who are crazy enough to think that they can change the world "),
            Task(title: "Are the ones who do.")
        ]
    }
}
