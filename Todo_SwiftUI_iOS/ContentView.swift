//
//  ContentView.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var todos = ["Walk the dog", "Do the dishes", "Pass the vacuum", "Take out the rubbish", "Go grocery shopping"]
    @State private var toggles = [true, true, true, true, true] {
        didSet {
            updateProgress()
        }
    }
    @State private var newTodo = ""
    @State private var progress: Double = 0

    var body: some View {
        NavigationView {
            VStack {
                Image("backgroundImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 250)
                
                ProgressView("Todo Completion", value: progress, total: 1.0)
                                    .padding()
                
                HStack {
                    Text("Todos!")
                        .font(.system(size: 52, weight: .light, design: .default))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Text("Toggle all them off!")
                        .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                Form {
                    ForEach($todos.indices, id: \.self) { index in
                        HStack {
                            NavigationLink(destination: TodoDisplayView(viewModel: TodoViewModel(), todo: todos[index])) {
                                TextField("Untitled", text: $todos[index])
                                Toggle("", isOn: $toggles[index])
                                    .onChange(of: toggles[index]) { _ in
                                        updateProgress()
                                    }
                            }
                        }
                    }
                    .onDelete(perform: deleteTodo)
                    
                    HStack {
                        TextField("Add new todo...", text: $newTodo, onCommit: {
                            addNewTodo()
                        })
                        .foregroundColor(.gray)
                        
                        Button(action: addNewTodo) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                        }
                    }
                }
                .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
    
    private func addNewTodo() {
        guard !newTodo.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else { return }
        todos.append(newTodo)
        toggles.append(true)
        newTodo = ""
    }
    
    private func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
        toggles.remove(atOffsets: offsets)
        updateProgress()
    }
    
    private func updateProgress() {
        let total = Double(toggles.count)
        let falseCount = Double(toggles.filter { !$0 }.count)
        progress = falseCount / total
    }
}

#Preview {
    ContentView()
}
