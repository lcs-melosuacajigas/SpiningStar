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
    
    //MARK: Computed properties
    var body: some View {
        Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .offset(x: offset, y: 0)
        animation(.default)
        
        // Trigger to the animation
            .onTapGesture {
                offset = 100.0
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
