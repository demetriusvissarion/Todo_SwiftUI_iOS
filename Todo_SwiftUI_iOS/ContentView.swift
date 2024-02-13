//
//  ContentView.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
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
                Text("Todo 1")
                Text("Todo 2")
                Text("Todo 3")
                Text("Todo 4")
                Text("Todo 5")
            }
            .foregroundColor(.black)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
