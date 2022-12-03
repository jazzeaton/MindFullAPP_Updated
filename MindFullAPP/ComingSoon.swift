//
//  ComingSoon.swift
//  MindFullAPP
//
//  Created by Jazmine Eaton on 11/28/22.
//

import SwiftUI

struct ComingSoon: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                
                Text("IN DEVELOPMENT...")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
        
                
            }
        }
        .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left.circle.fill").resizable().foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255)).frame(width: 40, height: 40)
            })
    }
}


struct ComingSoon_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoon()
    }
}
