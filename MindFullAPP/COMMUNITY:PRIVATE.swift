//
//  COMMUNITY:PRIVATE.swift
//  MINDFULLAPP
//
//  Created by Angelica Ellis on 11/18/22.
//

import SwiftUI

struct COMMUNITY_PRIVATE: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Text("Would you prefer to chat in a Community or a Private virtual environment?")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    
                
                VStack {
                    NavigationLink(destination: PeerSupportGroupType()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Community").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
                    
                    NavigationLink(destination: ChatType()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Private").foregroundColor(.black)
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

struct COMMUNITY_PRIVATE_Previews: PreviewProvider {
    static var previews: some View {
        COMMUNITY_PRIVATE()
    }
}
