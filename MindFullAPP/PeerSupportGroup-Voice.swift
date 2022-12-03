//
//  PeerSupportGroup-Voice.swift
//  MINDFULL
//
//  Created by Jazmine Eaton on 11/22/22.
//

import SwiftUI

struct PeerSupportGroup_Voice: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    var body: some View {
        ZStack {
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            
            VStack {

                ZStack {
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 355.0, height: 100.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.624, green: 1.0, blue: 0.796078431372549)/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text("Depression Peer Support Group")
                            .font(.title2)
                                .fontWeight(.bold)
                        Text("Focus: Coping w/ Depression").font(.title3)
                        Text("Capacity 9/15").font(.body)
                    }
                }
               
                    
                
                ZStack {
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 350.0, height: 100.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.47843137254901963, green: 0.8980392156862745, blue: 0.5098039215686274)/*@END_MENU_TOKEN@*/)
                    HStack{
                        Image("Ellipse 36").resizable().aspectRatio(contentMode: .fit).padding(5.0).frame(width: 100, height: 100)
                        VStack {
                            Text("Host Name:")
                                .font(.title2).fontWeight(.bold)
                            Text("Amelia Smiles").font(.title2)
                        }
                    }
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 350.0, height: 350.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.624, green: 1.0, blue: 0.796078431372549)/*@END_MENU_TOKEN@*/)
                       
                    
                    VStack{
                        
                        HStack{
                            Image("Ellipse 36").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                            Image("Ellipse 37").resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                            Image("Ellipse 38").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                        }
                        HStack{
                            Image("Ellipse 39").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                                                            
                            Image("squid2")
                                .resizable().aspectRatio(contentMode: .fit).frame(width:100, height: 110)
                                .clipShape(Circle())

                            Image("Ellipse 41").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                                
                        }
                        HStack{
                            Image("Ellipse 42")
                                .resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                            Image("Ellipse 43")
                                .resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                            Image("Ellipse 44")
                                .resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                                
                        }
                    }
                }
   
                HStack {
                    Spacer()
                    Image(systemName: "speaker.wave.3")
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
                        .frame(width: 40, height: 10)
                    Text("Mute Room").font(.headline)
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
                
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.left.circle.fill").resizable().foregroundColor(Color(red: 159/255, green: 255/255, blue: 203/255)).frame(width: 40, height: 40)
            })
    }
}

struct PeerSupportGroup_Voice_Previews: PreviewProvider {
    static var previews: some View {
        PeerSupportGroup_Voice()
    }
}
