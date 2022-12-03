//
//  RESOURCES PAGE.swift
//  MINDFULLAPP
//
//  Created by Angelica Ellis on 11/18/22.
//

import SwiftUI

struct RESOURCES_PAGE: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack {
                Spacer()
                Text("Depression")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                  
                Spacer()
                Text("is a long road to recovery. Let's find some help with the resources below.")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
               Spacer()
            
                HStack {
                    NavigationLink(destination: COMMUNITY_PRIVATE()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Chat Rooms").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
               
                    
                    NavigationLink(destination: COMMUNITY_PRIVATE()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Support Groups").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
                
                }
                
                
                
                HStack {
                    NavigationLink(destination: SEARCH()
                        .navigationBarBackButtonHidden(true)) {
                            Text("Local Therapist").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
              
                    NavigationLink(destination: ListOfResources()
                        .navigationBarBackButtonHidden(true)) {
                            Text("More Information").foregroundColor(.black)
                                .contentShape(Rectangle())
                                .frame(width: 150.0, height: 150.0)
                                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                .clipShape(Capsule())
                        }
                    
                }
                Spacer(minLength: 20)
                NavigationLink(destination: AILMENT_SELECTION()
                    .navigationBarBackButtonHidden(true)) {
                    Text("Select Another Ailment").foregroundColor(.black)
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
struct RESOURCES_PAGE_Previews: PreviewProvider {
    static var previews: some View {
        RESOURCES_PAGE()
    }
}
