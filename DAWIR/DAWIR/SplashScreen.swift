 //
//  SplashScreen.swift
//  DAWIR
//
//  Created by NOUNI on 9/1/22.
//

import SwiftUI


struct SplashScreen<Content: View, Title: View, Logo: View>: View {
    
    @State var searchText = ""
    
    var content : Content
    var titleView : Title
    var logoView : Logo
    
    var imagesize : CGSize
    
    init(imagesize: CGSize,@ViewBuilder content: @escaping () -> Content,@ViewBuilder titleView: @escaping () -> Title,@ViewBuilder logoView: @escaping () -> Logo){
        
        self.content = content()
        self.titleView = titleView()
        self.logoView = logoView()
        
        self.imagesize = imagesize
    }
    
    @State var textAnamation = false
    @State var imageAnamation = false
    @State var endAnamation = false

    @Namespace var animation
    var body: some View {
        
        VStack(spacing: 0){
            
            ZStack{
                
                Color.Darkpurple
                    .ignoresSafeArea()
        
                
                titleView
                    .scaleEffect(endAnamation ? 0.75: 1)
                    .offset(y: textAnamation ? -5 : 110)
                
                if !endAnamation{
                    
                    logoView
                        .matchedGeometryEffect(id: "LOGO", in: animation)
                        .frame(width: imagesize.width, height: imagesize.height)
                }
                
                HStack{
                    
                    if endAnamation {
                        
                        logoView
                            .matchedGeometryEffect(id: "LOGO", in: animation)
                            .frame(width: 30, height: 30)
                            .padding(.trailing)
                            .offset(y: -5 )
                        
                    }
                    
                    Spacer()
                    
                    
                }//hstack
                
                
                
    }//zstack
            .frame(height: endAnamation ? 60 : nil)
            .zIndex(1)
            content
                .frame(height: endAnamation ? nil : 0 )
                .zIndex(0)
            
            
            
            
            
}//vstack
        
        .frame(maxHeight: .infinity, alignment: .top)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                withAnimation(.spring()){
                    textAnamation.toggle()
                }
                
                withAnimation(Animation.interactiveSpring(response: 0.6, dampingFraction: 1, blendDuration: 1)){
                    
                    endAnamation.toggle()
                }
                
                
            }
        }
        
       
        
    }//body
    
    
    
    
}//view

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
