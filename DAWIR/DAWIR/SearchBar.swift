//
//  SearchBar.swift
//  DAWIR
//
//  Created by NOUNI on 9/1/22.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack{
            
            TextField("Search...", text: $text)
                .padding(15)
                .padding(.horizontal, 25)
                .background(Color.Lightpurple)
                .font(Font.custom("GraphikArabic-Regular", size: 17))
                .cornerRadius(25)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.Darkorange)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                 
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.Darkpurple)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                                    self.isEditing = true
                                }

                if isEditing {
                    Button(action: {
                            self.isEditing = false
                            self.text = ""

                    }) {
                        Text("Cancel")
                }.padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
                .accentColor(.Lightorange)
        }
    }
}
}
struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
