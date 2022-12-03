//
//  ContactDoc.swift
//  MINDFULLAPP
//
//  Created by Angelica Ellis on 11/21/22.
//

import SwiftUI

struct ContactDoc: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Text("Dr. Amelia Amazing")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Image("Amelia")
                        .resizable()
                        .frame(width: 300.0, height: 300.0)
                        .cornerRadius(20)
                
                Link(destination: URL (string: "https://www.google.com/maps")!, label:{
                    Text("In Person Visit")
                })
                .contentShape(Rectangle())
                .frame(width: 268.0, height: 52.0)
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                .clipShape(Capsule())
                .foregroundColor(.black)
            
                NavigationLink(destination: ComingSoon()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Call").foregroundColor(.black)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: ComingSoon()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Email").foregroundColor(.black)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: ComingSoon()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Virtual Visit").foregroundColor(.black)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: ComingSoon()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Website").foregroundColor(.black)
                            .padding()
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left.circle.fill").resizable().foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255)).frame(width: 40, height: 40)
            })
    }
}

struct ContactDoc_Previews: PreviewProvider {
    static var previews: some View {
        ContactDoc()
    }
}
