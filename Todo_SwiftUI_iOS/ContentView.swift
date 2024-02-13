//
//  ContentView.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var todo1 = "Todo 1"
    @State private var todo2 = "Todo 2"
    @State private var todo3 = "Todo 3"
    @State private var todo4 = "Todo 4"
    @State private var todo5 = "Todo 5"
    @State private var isToggle1On: Bool = false
    @State private var isToggle2On: Bool = false
    @State private var isToggle3On: Bool = false
    @State private var isToggle4On: Bool = false
    @State private var isToggle5On: Bool = false

    var body: some View {
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
                    TextField("Todo 1", text: $todo1)
                    Spacer()
                    Toggle("", isOn: $isToggle1On)
                }
                HStack {
                    TextField("Todo 2", text: $todo2)
                    Spacer()
                    Toggle("", isOn: $isToggle2On)
                }
                HStack {
                    TextField("Todo 3", text: $todo3)
                    Spacer()
                    Toggle("", isOn: $isToggle3On)
                }
                HStack {
                    TextField("Todo 4", text: $todo4)
                    Spacer()
                    Toggle("", isOn: $isToggle4On)
                }
                HStack {
                    TextField("Todo 5", text: $todo5)
                    Spacer()
                    Toggle("", isOn: $isToggle5On)
                }
            }
            .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
