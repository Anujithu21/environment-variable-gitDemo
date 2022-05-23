//
//  ContentView.swift
//  EnvironmentObjectsTutorial
//
//  Created by Anu Sankaranarayanan on 17/05/22.
//

import SwiftUI

struct ContentView: View {
    //creating an object of observableobjectclass
    @StateObject var mySettings = DisplayViewSettings()
    
    var theColors:[Color] = [.red, .purple, .green, .gray, .brown, .cyan, .indigo, .yellow]
    
    var body: some View {
        //DisplayView().environmentObject(DisplayViewSettings())
            NavigationView{
                VStack{
                    
                    NavigationLink("Go to Displayview", destination: DisplayView().environmentObject(mySettings))
                        .modifier(MyButtonMod(myColor: .gray))
                    
                    
                    
                    Spacer()
                    
                    Slider(value: $mySettings.volume, in: 0...10)
                    Text("volume: \(mySettings.volume, specifier:"%.1f")")
                    
                    Button(action: {
                        mySettings.username = "Anu"
                    }, label: {
                        Text("change username")
                    }).modifier(MyButtonMod(myColor: .yellow))
                    
                    Button(action: {
                        mySettings.backgroundColor = theColors.randomElement() ?? Color.white
                    }, label: {
                        Text("change background")
                    }).modifier(MyButtonMod(myColor: .brown))
                    
                    Button(action: {
                        mySettings.dateIsdisplayed.toggle()
                    }, label: {
                        Text("Toggle date")
                    }).modifier(MyButtonMod(myColor: .yellow))
                
                    Spacer()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
