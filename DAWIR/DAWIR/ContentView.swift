//
//  ContentView.swift
//  DAWIR
//
//  Created by NOUNI on 9/1/22.
//

import SwiftUI

extension Color{
    
    static let Darkpurple = Color(red: 27/255, green: 20/255, blue: 99/255)
    static let Mediumpurple = Color(red: 120/255, green: 61/255, blue: 224/255)
    static let Lightpurple = Color(red: 176/255, green: 163/255, blue: 240/255)
    static let Darkorange = Color(red: 235/255 , green: 78/255, blue: 26/255)
    static let Lightorange = Color(red: 255/255, green: 115/255, blue: 69/255)
    
    
}


struct ContentView: View {
    var body: some View {
        
        SplashScreen(imagesize: CGSize(width: 120, height: 120)) {
            
        } titleView: {
            
            //Text("دوّر")
               // .font(Font.custom("GraphikArabic-Black", size: 35))
                //.foregroundColor(.white)
            Image("d1")
                .resizable()
                .frame(width: 120, height: 50, alignment: .center)
                .scaleEffect()
        } logoView: {
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.Lightorange)
                
                
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
