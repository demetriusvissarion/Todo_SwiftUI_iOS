//
//  TodoViewModel.swift
//  Todo_SwiftUI_iOS
//
//  Created by Demetrius Vissarion on 14/02/2024.
//

import Foundation
import SwiftUI
import Combine

class TodoViewModel: ObservableObject {
    @Published var description: String = ""
}
