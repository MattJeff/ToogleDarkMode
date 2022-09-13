//
//  ContentView.swift
//  ToggleDarkMode
//
//  Created by Mathis Higuinen on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleIsOn = false
    var size = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            
            Color("background").ignoresSafeArea()
            
            VStack(spacing:80){
                Image(toggleIsOn ? "illustrationDark"  : "illustrationlight" )
                
                VStack(spacing:30){
                VStack(spacing:4){
                Text("Customize")
                        .font(.headline)
                Text("Choose your default appearance.")
                        .font(.subheadline)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(Color("togglebackground"))
                    HStack{
                        
                        Image(toggleIsOn ? "soleil" : "lune")
                            .onTapGesture {
                                toggleIsOn.toggle()
                            }
                    }.frame(maxWidth: .infinity, alignment: toggleIsOn ? .trailing : .leading)
                        .animation(.easeInOut)
                 
                    
                }   .frame(width: 100,height:20)
                    
                }
               
                HStack{
                    Text("Continue")
                       
                        .bold()
                    Image(systemName: "arrow.right")
                }.padding()
                    .foregroundColor(.black)
                    .background(.white)
                    .cornerRadius(30)
                
            }.preferredColorScheme(toggleIsOn ? .dark : .light)
                .frame(width: size.height/2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
