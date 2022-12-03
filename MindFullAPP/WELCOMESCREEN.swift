//
//  LOGINSCREEN.swift
//  MINDFULLAPP
//
//  Created by Angelica Ellis on 11/17/22.
//

import SwiftUI

struct WELCOMESCREEN: View {
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                Spacer()
                Text("Welcome to MINDFULL!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    
                Text("Let’s get started!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink(destination: MINDFULL_LOGIN_SCREEN()
                    .navigationBarBackButtonHidden(true)) {
                    Text("Log In").foregroundColor(.black)
                        .padding(.all)
                        .contentShape(Rectangle())
                        .frame(width: 268.0, height: 52.0)
                        .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                    
                }
                
                
                NavigationLink(destination: CommunityGuidelines()
                    .navigationBarBackButtonHidden(true)) {
                    Text("Create Account").foregroundColor(.black)
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
    struct WELCOMESCREEN_Previews: PreviewProvider {
        static var previews: some View {
            WELCOMESCREEN()
        }
    }

