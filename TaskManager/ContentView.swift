//
//  ContentView.swift
//  TaskManager
//
//  Created by HelloTask on 22/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: TaskSection? = TaskSection.all
    @State private var alltasks = Task.examples()
    @State private var userCreatedGroups : [TaskGroup] = TaskGroup.examples()
    
    var body: some View {
        NavigationSplitView {
            SidebarView(userCreatedGroups: $userCreatedGroups, selection: $selection)
        } detail: {
            switch selection {
            case .all:
                StaticTaskListView(title: "All", tasks: alltasks)
            case .done:
                StaticTaskListView(title: "All", tasks: alltasks.filter({$0.isCompleted}))
            case .upcoming:
                StaticTaskListView(title: "All", tasks: alltasks.filter({!$0.isCompleted}))
            case .list(let taskGroup):
                StaticTaskListView(title: "All", tasks: taskGroup.tasks)
            case .none:
                Text("none")
            }
        }
    }
}

#Preview {
    ContentView()
}
