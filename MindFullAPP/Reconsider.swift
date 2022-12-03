//
//  Reconsider.swift
//  MindFullAPP
//
//  Created by Jazmine Eaton on 11/30/22.
//

import SwiftUI

struct Reconsider: View {
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Spacer()
                Image("Disagree")
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("If you disagree with community guidelines you will be unable to utilize the MINDFULL app.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    
                Spacer()
               
                
                
                NavigationLink(destination: CommunityGuidelines()
                    .navigationBarBackButtonHidden(true)) {
                    Text("Reconsider").foregroundColor(.black)
                        .padding(.all)
                        .contentShape(Rectangle())
                        .frame(width: 268.0, height: 52.0)
                        .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                    
                }
                Spacer()
            }
            
        }
    }
}

struct Reconsider_Previews: PreviewProvider {
    static var previews: some View {
        Reconsider()
    }
}
