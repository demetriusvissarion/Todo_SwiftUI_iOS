//
//  ContentView.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State var timesBeingTapped = 0
    @State private var petName = ""
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
                    

                Text("Toggle all them off!")
                    .foregroundColor(.black)
            }

            VStack {
                Toggle(isOn: $isToggle1On) {
                    Text("Todo 1")
                }
                Toggle(isOn: $isToggle2On) {
                    Text("Todo 2")
                }
                Toggle(isOn: $isToggle3On) {
                    Text("Todo 3")
                }
                Toggle(isOn: $isToggle4On) {
                    Text("Todo 4")
                }
                Toggle(isOn: $isToggle5On) {
                    Text("Todo 5")
                }
            }
            .foregroundColor(.black)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        
        Button("Times tapped: \(timesBeingTapped)") {
            timesBeingTapped += 1
        }
        
        Form {
            TextField("Enter your pet's name", text: $petName)
            Text("Hello, \(petName)!")
        }
    }
}

#Preview {
    ContentView()
}
