//
//  ContentView.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var todo1 = ""
    @State private var todo2 = "Todo 2"
    @State private var todo3 = "Todo 3"
    @State private var todo4 = "Todo 4"
    @State private var todo5 = "Todo 5"
    @State private var isToggle1On: Bool = true
    @State private var isToggle2On: Bool = true
    @State private var isToggle3On: Bool = true
    @State private var isToggle4On: Bool = true
    @State private var isToggle5On: Bool = true

    var body: some View {
        NavigationView {
            VStack {
                Image("backgroundImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 250)
                
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
                    HStack {
                        NavigationLink(destination: TodoDisplayView(viewModel: TodoViewModel(), todo: todo1)) {
                            TextField("Untitled", text: $todo1)
                        }
                        Toggle("", isOn: $isToggle1On)
                    }
                    HStack {
                        NavigationLink(destination: TodoDisplayView(viewModel: TodoViewModel(), todo: todo2)) {
                            TextField("Untitled", text: $todo2)
                        }
                        Toggle("", isOn: $isToggle2On)
                    }
                    HStack {
                        NavigationLink(destination: TodoDisplayView(viewModel: TodoViewModel(), todo: todo3)) {
                            TextField("Untitled", text: $todo3)
                        }
                        Toggle("", isOn: $isToggle3On)
                    }
                    HStack {
                        NavigationLink(destination: TodoDisplayView(viewModel: TodoViewModel(), todo: todo4)) {
                            TextField("Untitled", text: $todo4)
                        }
                        Toggle("", isOn: $isToggle4On)
                    }
                    HStack {
                        NavigationLink(destination: TodoDisplayView(viewModel: TodoViewModel(), todo: todo5)) {
                            TextField("Untitled", text: $todo5)
                        }
                        Toggle("", isOn: $isToggle5On)
                    }
                }
                .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
