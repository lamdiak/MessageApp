//
//  ContentView.swift
//  MessageApp
//
//  Created by Lamine DIAKITE on 05/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// create homePage
struct Home: View {
    var body: some View {
        
        VStack(spacing: 0) {
            
            TopView()
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TopView: View {
    
    @State var search = ""
    
    var body: some View {
        VStack(spacing: 22){
            
            HStack{
                
                Text("Messages")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(Color.black.opacity(0.7))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("menu")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.black.opacity(0.4))
                }
            }
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 18){
                        Button(action: {
                        }) {
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color("Color2"))
                                .padding(18)
                                
                               }.background(Color("Color2").opacity(0.5))
                            .clipShape(Circle())
                        
                        // une boucle pour afficher tous les images
                        ForEach(1...7, id: \.self) {i in
                          
                            Button(action: {}
                                   , label: {
                                Image("p\(i)")
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 60, height: 60)
                                   })
                        }
                    }
                }
            
            HStack(spacing: 15){
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(Color.black.opacity(0.3))
                
                TextField("Search", text: self.$search)
            }.padding()
            .background(Color.white)
            .cornerRadius(8)
            .padding(.bottom, 10)
                
        }.padding()
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color("Color1"))
    }
}
