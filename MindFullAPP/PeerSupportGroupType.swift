//
//  PeerSupportGroupType.swift
//  MindFullAPP
//
//  Created by Jazmine Eaton on 11/28/22.
//

import SwiftUI

struct PeerSupportGroupType: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Text("What type of peer support group do you prefer?")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                
                VStack {
                    Button("Text") {
                    }
                    .padding()
                    .frame(width: 150.0, height: 150.0)
                    .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: PeerSupportGroup_Voice()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Voice").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
                    NavigationLink(destination: VideoChat()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Video").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
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

struct PeerSupportGroupType_Previews: PreviewProvider {
    static var previews: some View {
        PeerSupportGroupType()
    }
}
