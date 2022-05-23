//
//  DisplayView.swift
//  EnvironmentObjectsTutorial
//
//  Created by Anu Sankaranarayanan on 17/05/22.
//

import SwiftUI

struct DisplayView: View {
    
    @EnvironmentObject var mySettings: DisplayViewSettings
    
    var body: some View {
        
        ZStack{
            
           mySettings.backgroundColor.ignoresSafeArea()
            
            VStack(alignment:.leading){
                //set username
                Text("User:\(mySettings.username)")
                    .font(.largeTitle).padding()
                
                //set the volume
                Text("Volume: \(mySettings.volume, specifier: "%.1f")").padding()
                
                //show or hide the date
                if mySettings.dateIsdisplayed {
                Text("Date: \(Date().addingTimeInterval(600), style: .date)").padding()
                }
                
            }
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    //static let mySettings = DisplayViewSettings()
    static var previews: some View {
        DisplayView().environmentObject(DisplayViewSettings())
    }
}
