//
//  MyButtonMod.swift
//  EnvironmentObjectsTutorial
//
//  Created by Anu Sankaranarayanan on 17/05/22.
//

import SwiftUI

struct MyButtonMod: ViewModifier {
    
    var myColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 50).padding()
            .background(myColor).cornerRadius(25)
    }
}
