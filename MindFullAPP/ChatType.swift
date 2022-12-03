//
//  ChatType.swift
//  MindFullAPP
//
//  Created by Jazmine Eaton on 11/28/22.
//

import SwiftUI

struct ChatType: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Text("How would you like to chat?")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    
                
                VStack {
                    NavigationLink(destination: PrivateChat()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Text").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
                    
                    Button("Voice") {
                    }
                    .padding()
                    .frame(width: 150.0, height: 150.0)
                    .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                    .foregroundColor(.black)
                    
                    Button("Video") {
                    }
                    .padding()
                    .frame(width: 150.0, height: 150.0)
                    .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                    .foregroundColor(.black)
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

struct ChatType_Previews: PreviewProvider {
    static var previews: some View {
        ChatType()
    }
}
