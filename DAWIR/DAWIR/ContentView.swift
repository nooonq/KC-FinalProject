//
//  ContentView.swift
//  DAWIR
//
//  Created by NOUNI on 9/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        SplashScreen(imagesize: CGSize(width: 120, height: 120)) {
            
        } titleView: {
            
            Text("دوّر")
                .font(.system(size: 35).bold())
                .foregroundColor(.white)
            
        } logoView: {
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
