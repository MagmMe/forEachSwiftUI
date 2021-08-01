//
//  ContentView.swift
//  ForEach in View
//
//  Created by Magme on 30/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    let Colors: [Color] = [.red, .green, .blue]
    
    
    var body: some View {
        
//        Z stack the simplest way to organize views, background colors of an app
        
        ZStack(alignment: .bottom){
            
            HStack{
//                1. First forEach which displays numbers in column
                VStack{
                    ForEach((1...10), id: \.self){
                        
                        Text("\($0) ...")
                    }
                    Text("Another piecie of text")
                }
//                2. Second forEach to organize colors in app
                VStack{
                    ForEach(Colors, id: \.self){ color in
                        Text(color.description.capitalized)
                            .padding()
                            .background(color)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
