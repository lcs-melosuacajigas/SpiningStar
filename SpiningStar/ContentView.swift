//
//  ContentView.swift
//  SpiningStar
//
//  Created by Mateo Elosua on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State var offset = -100.0
    
    // This is going to control rotation
    
    @State var starRotation = 0.0
    
    //MARK: Computed properties
    var body: some View {
        Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .offset(x: offset, y: 0)
        rotation3DEffect(Angle.degrees(starRotation),
                         axis: (x: 0, y: 1, z: 0))
        animation(
            Animation
                .easeInOut(duration: 2)
                .repeatForever(autoreverses: true)
        )
        
        // Trigger to the animation
            .onTapGesture {
                offset = 100.0
                starRotation = 360 * 2
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
