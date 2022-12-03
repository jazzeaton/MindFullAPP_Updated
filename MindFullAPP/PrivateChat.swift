//
//  PrivateChat.swift
//  MindFullAPP
//
//  Created by David Bennett on 11/21/22.
//

import SwiftUI

struct PrivateChat: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color(red: 37/255, green: 161/255, blue: 142/255).ignoresSafeArea()
            VStack{
                Button("Private Chat: Frankton") {
                }
                .padding()
                .font(.title2)
                .frame(width: 268.0, height: 52.0)
                .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                .clipShape(Capsule())
                .foregroundColor(.black)
                //Spacing for gap between Heading/Chat Title and Chat Box
                Spacer().frame(width: 100, height: 20)
                
                ZStack{
                    Button(""){
                    }
                    .frame(width: 268.0, height: 465.0)
                    .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    VStack{
                        HStack{
                            Image("Plank")
                                .resizable()
                                .frame(width: 45.0, height: 45.0)
                            Rectangle().fill(Color(red: 37/255, green: 161/255, blue: 142/255)).overlay(Text("I know how you feel")
                                .foregroundColor(.white))
                            .padding([.top, .bottom], 5)
                            .frame(width: 200.0, height: 52.0)
                            .cornerRadius(20)
                        }
                        HStack{
                            Rectangle().fill(Color(red: 255/255, green: 255/255, blue: 255/255)).overlay(Text("Do you Frank?")
                                .foregroundColor(.black))
                            .padding([.top, .bottom], 5)
                            .frame(width: 200.0, height: 52.0)
                            .cornerRadius(20)
                            Image("squid3").resizable()
                                .frame(width: 45.0, height: 45.0)
                        }
                        HStack{
                            Image("Plank")
                                .resizable()
                                .frame(width: 45.0, height: 45.0)
                            Rectangle().fill(Color(red: 37/255, green: 161/255, blue: 142/255)).overlay(Text("Yes, I've been there")
                                .foregroundColor(.white))
                            .padding([.top, .bottom], 5)
                            .frame(width: 200.0, height: 52.0)
                            .cornerRadius(20)
                        }
                        HStack{
                            Image("Plank")
                                .resizable()
                                .frame(width: 45.0, height: 45.0)
                            Rectangle().fill(Color(red: 37/255, green: 161/255, blue: 142/255)).overlay(Text("I mean my wife is a computer. I had to pull myself out of that dark place Squiward")
                                .foregroundColor(.white))
                            .padding([.top, .bottom], 5)
                            .frame(width: 200.0, height: 104.0)
                            .cornerRadius(20)
                        }
                        HStack{
                            Rectangle().fill(Color(red: 255/255, green: 255/255, blue: 255/255)).overlay(Text("How did you find the strength to do that Frank?")
                                .foregroundColor(.black))
                            .padding([.top, .bottom], 5)
                            .frame(width: 200.0, height: 104.0)
                            .cornerRadius(20)
                            Image("squid3").resizable()
                                .frame(width: 45.0, height: 45.0)
                        }
                        HStack{
                            Image("Plank")
                                .resizable()
                                .frame(width: 45.0, height: 45.0)
                            Rectangle().fill(Color(red: 37/255, green: 161/255, blue: 142/255)).overlay(Text("Krabby Patties...")
                                .foregroundColor(.white))
                            .padding([.top, .bottom], 5)
                            .frame(width: 200.0, height: 52.0)
                            .cornerRadius(20)
                        }
                    }
                }
                
                Image(systemName: "keyboard")
                    .padding(.leading, 225.0)
                    .frame(width: 268.0, height: 52.0).clipShape(Capsule())
                    .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                
                VStack {
                    HStack {
                        NavigationLink(destination: RESOURCES_PAGE()
                                  .navigationBarBackButtonHidden(true)) {
                                    Image(systemName: "rectangle.portrait.and.arrow.right")
                                      .resizable(resizingMode: .stretch)
                                      .padding().frame(width: 75.0, height: 75.0)
                                      .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                      .clipShape(Circle())
                                      .foregroundColor(.black)
                              }
                        
                        NavigationLink(destination: ComingSoon()
                                  .navigationBarBackButtonHidden(true)) {
                                    Image(systemName: "person.crop.circle.badge.exclamationmark")
                                      .resizable(resizingMode: .stretch)
                                      .padding().frame(width: 75.0, height: 75.0)
                                      .background(Color(red: 159/255, green: 255/255, blue: 203/255))
                                      .clipShape(Circle())
                                      .foregroundColor(.black)
                                  }
                    }
                    
                    HStack {
                        
                        
                        Text("Exit")
                            .font(.headline)
                        .foregroundColor(.black)
                    
                        .padding(.leading)
                        .frame(width: 80, height: 50)
                        Text("Report Abuse").font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 100, height: 50)
                        
                    }
                    
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

struct PrivateChat_Previews: PreviewProvider {
    static var previews: some View {
        PrivateChat()
    }
}
