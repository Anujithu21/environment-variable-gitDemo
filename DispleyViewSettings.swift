//
//  DispleyViewSettings.swift
//  EnvironmentObjectsTutorial
//
//  Created by Anu Sankaranarayanan on 17/05/22.
//

import SwiftUI

class DisplayViewSettings: ObservableObject {
    
    @Published var username = "Anu"
    @Published var volume: Double=0
    @Published var backgroundColor = Color.white
    @Published var dateIsdisplayed = true
}
