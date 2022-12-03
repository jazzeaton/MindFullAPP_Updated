//
//  MINDFULL_LOGIN_SCREEN.swift
//  MINDFULL
//
//  Created by Jazmine Eaton on 11/18/22.
//

import SwiftUI

struct MINDFULL_LOGIN_SCREEN: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isToggle: Bool = false
    
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Image("Mindfull logo")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                Text("Please login for a personalized experience!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                TextField(
                        "Username (email address)",
                        text: $username)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .textFieldStyle(RoundedBorderTextFieldStyle()
    
                        )
                        .foregroundColor(.black)
                        .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                SecureField(
                        "Password",
                        text: $password
                             
                          )
                          .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                          .textFieldStyle(RoundedBorderTextFieldStyle())
                          .border(Color(UIColor.separator))
                          .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                Toggle(isOn: self.$isToggle) {
                    Text("Keep Me Logged In")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: DelayScreen()
                          .navigationBarBackButtonHidden(true)) {
                            Text("Sign In").foregroundColor(.black)
                              .padding(.all)
                              .contentShape(Rectangle())
                              .frame(width: 268.0, height: 52.0)
                              .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                              .clipShape(Capsule())
                          }
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

struct MINDFULL_LOGIN_SCREEN_Previews: PreviewProvider {
    static var previews: some View {
        MINDFULL_LOGIN_SCREEN()
    }
}
