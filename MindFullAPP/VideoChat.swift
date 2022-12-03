//
//  VideoChat.swift
//  MindFullAPP
//
//  Created by David Bennett on 11/23/22.
//

import SwiftUI

struct VideoChat: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 325.0, height: 75.0)
                    .foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .clipShape(Capsule())
                    .foregroundColor(.black)
                    VStack{
                        Text("Peer Support Group").font(.title2)
                            .fontWeight(.bold)
                        
                        Text("Focus: Coping w/ Depression").font(.title3)
                        Text("Room Capacity 4 / 6").font(.body)
                    }
                }
                
                Spacer().frame(width: 100, height: 5)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 325.0, height: 75.0)
                    .foregroundColor(Color(red: 122/255, green: 229/255, blue: 130/255))
                    HStack{
                        Image("V_organizer").resizable().aspectRatio(contentMode: .fit).padding(5.0).frame(width: 75, height: 100)
                        VStack{
                            Text("Host Name:").font(.title2).fontWeight(.bold)
                            Text("Alicia Silverock").font(.title2)
                            
                        }
                    }
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 325.0, height: 350.0)
                        .foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255))
                    VStack{
                        HStack{
                            Image("Squid1")
                                .resizable()
                                .frame(width: 120, height: 120)
                                .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                            Image("Person2").resizable()
                                .frame(width: 120, height: 120)
                        }
                        HStack{
                            Image("Person3")
                                .resizable()
                                .frame(width: 120, height: 120)
                            Image("Gary").resizable()
                                .frame(width: 120, height: 120)
                        }
                        
                    }
                }
                
        
                HStack {
                    Spacer()
                    Image(systemName: "video.slash")
                        .resizable(resizingMode: .stretch)
                        .padding().frame(width: 75, height: 75.0)
                        .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                        .clipShape(Circle())
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "mic")
                        .resizable(resizingMode: .stretch)
                        .padding().frame(width: 75.0, height: 75.0)
                        .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                        .clipShape(Circle())
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink(destination: ComingSoon()
                              .navigationBarBackButtonHidden(true)) {
                                Image(systemName: "person.crop.circle.badge.exclamationmark")
                                  .resizable(resizingMode: .stretch)
                                  .padding().frame(width: 75.0, height: 75.0)
                                  .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                  .clipShape(Circle())
                                  .foregroundColor(.black)
                              }
                    Spacer()
                    NavigationLink(destination: RESOURCES_PAGE()
                              .navigationBarBackButtonHidden(true)) {
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                  .resizable(resizingMode: .stretch)
                                  .padding().frame(width: 75.0, height: 75.0)
                                  .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                  .clipShape(Circle())
                                  .foregroundColor(.black)
                              }
                    Spacer()
                   
                }
                HStack{
                    Spacer()
                        .frame(width: 30, height: 10)
                    Text("Camera Off").font(.headline)
                        .foregroundColor(.black)
                Spacer()
                        .frame(width: 40, height: 10)
                    Text("Mute Mic").font(.headline)
                        .foregroundColor(.black)
                    Spacer()
                        .frame(width: 40, height: 10)
                    Text("Report Abuse").font(.headline)
                        .foregroundColor(.black)
                    Spacer()
                        .frame(width: 40, height: 10)
                    Text("Exit").font(.headline)
                        .foregroundColor(.black)
                    Spacer()
                }
                Spacer()
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

struct VideoChat_Previews: PreviewProvider {
    static var previews: some View {
        VideoChat()
    }
}
