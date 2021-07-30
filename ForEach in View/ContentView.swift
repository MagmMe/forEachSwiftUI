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
        
        
        ZStack(alignment: .bottom){
            
            HStack{
                VStack{
                    ForEach((1...10), id: \.self){
                        
                        Text("\($0) ...")
                    }
                    Text("Another piecie of text")
                }
                
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
