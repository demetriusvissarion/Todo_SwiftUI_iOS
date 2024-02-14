//
//  TodoDisplayView.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 14/02/2024.
//

import Foundation
import SwiftUI

struct TodoDisplayView: View {
    @ObservedObject var viewModel: TodoViewModel
    var todo: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("Your todo description: ")
                .font(.headline)
            
            TextField("write your description here", text: $viewModel.description)
                .foregroundColor(viewModel.description.isEmpty ? .gray : .primary)
                .font(viewModel.description.isEmpty ? .body.italic() : .body)
                .padding()
                .background(viewModel.description.isEmpty ? Color(UIColor.lightGray) : Color.clear)
                .cornerRadius(5)
            Spacer()
        }
        .padding()
        .navigationTitle(todo)
        
        Spacer()
    }
}
