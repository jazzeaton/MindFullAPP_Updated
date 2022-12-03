//
//  AILMENT SELECTION.swift
//  MINDFULLAPP
//
//  Created by Angelica Ellis on 11/18/22.
//

import SwiftUI

struct AILMENT_SELECTION: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Text("What is your main mental health concern?")
                    .font(.title3)
                    .foregroundColor(Color.white)
                
                
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Depression").foregroundColor(.black)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Bi-Polar Disorder").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Body Dysmorphia").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Anxiety").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Obssesive Compulsive Disorder").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 274.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("ADHD").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Insomnia").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("PTSD").foregroundColor(.black)
                            .padding(.all)
                            .contentShape(Rectangle())
                            .frame(width: 268.0, height: 52.0)
                            .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                            .clipShape(Capsule())
                    }
                
                NavigationLink(destination: RESOURCES_PAGE()
                    .navigationBarBackButtonHidden(true)) {
                        Text("Schizophrenia").foregroundColor(.black)
                            .padding(.all)
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
struct AILMENT_SELECTION_Previews: PreviewProvider {
    static var previews: some View {
        AILMENT_SELECTION()
    }
}
