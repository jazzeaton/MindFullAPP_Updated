//
//  SplashScreen.swift
//  MindFullAPP
//
//  Created by David Bennett on 11/21/22.
//

import SwiftUI

struct SplashScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                
                Spacer()
                Text("Welcome")
                    .font(.largeTitle)
                
                Text("Squidward").foregroundColor(.white)
                    .frame(width: 268.0, height: 52.0)
                    .background(Color(red: 0/255, green: 78/255, blue: 100/255))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                
                Spacer(minLength: 215)
                GifView("grass_flow")
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
